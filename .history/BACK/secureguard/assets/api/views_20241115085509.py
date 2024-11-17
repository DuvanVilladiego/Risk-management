from rest_framework.viewsets import ModelViewSet
from assets.models import Assets
from assets.api.serializers import AssetSerializer

class AssetModelViewSet(ModelViewSet):
    serializer_class = AssetSerializer
    queryset = Assets.objects.all()