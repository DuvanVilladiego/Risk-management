from rest_framework.routers import DefaultRouter
from entity.api.views import EntityModelViewSet

router_entity = DefaultRouter()

router_entity.register(prefix="entity", basename="entity", viewset=EntityModelViewSet)