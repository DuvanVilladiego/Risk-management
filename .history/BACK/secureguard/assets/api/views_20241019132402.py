from rest_framework.viewsets import ViewSet
from assets.models import Assets
from assets.api.serializers import AssetSerializar

class AssetModelViewSet(AssetModelViewSet):
    serializer_class = AssetSerializar
    queryset = Assets.objects.all()