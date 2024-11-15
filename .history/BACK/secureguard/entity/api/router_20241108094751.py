from rest_framework.routers import DefaultRouter
from entity.api.views import EntityModelViewSet

router_asset = DefaultRouter()

router_asset.register(prefix="entity", basename="entity", viewset=EntityModelViewSet)