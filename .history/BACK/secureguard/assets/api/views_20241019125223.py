from rest_framework.viewsets import ViewSet
from assets.models import Assets

class AssetModelViewSet(AssetModelViewSet):
    
    queryset = Assets.objects.all()