from rest_framework.viewsets import ModelViewSet
from assets.models import Assets
from assets.api.serializers import AssetSerializar

class AssetModelViewSet(ModelViewSet):
    serializer_class = AssetSerializar
    queryset = Assets.objects.all()