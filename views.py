from assets.models import Assets
from rest_framework.viewsets import ModelViewSet
from assets.api.serializers import AssetSerializar
#added
from rest_framework.viewsets import ViewSet
from rest_framework.response import Response
from rest_framework import status
from .models import Assets
from .serializers import AssetsSerializer
#
class AssetModelViewSet(ModelViewSet):
    serializer_class = AssetSerializar
    queryset = Assets.objects.all()
    
#Custom_List_View
class CustomListViewSet(ViewSet):
    def create(self, request):
        """
        Procesa una lista de parámetros personalizada y la guarda en la base de datos.
        """
        parametros = request.data.get('parametros')
        if not parametros or not isinstance(parametros, list):
            return Response({"error": "Debe proporcionar una lista válida de parámetros."}, status=status.HTTP_400_BAD_REQUEST)

        parametros_procesados = [str(param) for param in parametros]
        cantidad = len(parametros_procesados)
        descripcion = ", ".join(parametros_procesados)

        # Guardar en la base de datos
        asset = Assets.objects.create(
            AssetType="Lista de Parámetros",
            AssetStatus=f"Procesado {cantidad} ítems",
            AssetQuantity=cantidad,
            Description_Assets=descripcion
        )

        serializer = AssetsSerializer(asset)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
#


#AutomaticCalculation
class CalculationViewSet(ViewSet):
    def create(self, request):
        """
        Realiza el cálculo de valor o criticidad basado en los datos enviados.
        """
        tipo_calculo = request.data.get('tipo_calculo')
        descripcion = request.data.get('descripcion', 'Sin descripción')

        if tipo_calculo == "valor":
            vb = float(request.data.get('vb', 0))
            pb = float(request.data.get('pb', 0))
            vu = float(request.data.get('vu', 0))
            pu = float(request.data.get('pu', 0))
            ve = float(request.data.get('ve', 0))
            pe = float(request.data.get('pe', 0))
            resultado = (vb * pb) + (vu * pu) + (ve * pe)
            asset_type = "Cálculo de Valor"
        elif tipo_calculo == "criticidad":
            probabilidad = float(request.data.get('probabilidad', 0))
            impacto_disp = float(request.data.get('impacto_disp', 0))
            impacto_int = float(request.data.get('impacto_int', 0))
            impacto_conf = float(request.data.get('impacto_conf', 0))
            resultado = probabilidad * (impacto_disp + impacto_int + impacto_conf)
            asset_type = "Cálculo de Criticidad"
        else:
            return Response({"error": "Tipo de cálculo no válido. Use 'valor' o 'criticidad'."}, status=status.HTTP_400_BAD_REQUEST)

        # Guardar en la base de datos
        asset = Assets.objects.create(
            AssetType=asset_type,
            AssetStatus=str(resultado),
            AssetQuantity=1,  # Por defecto, se considera 1 cálculo por vez
            Description_Assets=descripcion
        )

        serializer = AssetsSerializer(asset)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

#