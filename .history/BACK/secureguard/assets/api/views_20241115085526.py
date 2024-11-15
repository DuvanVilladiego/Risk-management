from assets.api.serializers import AssetSerializer
from rest_framework.viewsets import ModelViewSet
from assets.models import Assets

class AssetModelViewSet(ModelViewSet):
    serializer_class = AssetSerializer
    queryset = Assets.objects.all()