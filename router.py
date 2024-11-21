from django.urls import path
from rest_framework.routers import DefaultRouter
from assets.api.views import AssetModelViewSet

#added
from rest_framework.routers import DefaultRouter
from .views import CustomListViewSet, CalculationViewSet
from assets.api.views import AssetModelViewSet

# Registro de ViewSets
router = DefaultRouter()
router.register(r'custom-list', CustomListViewSet, basename='custom-list')
router.register(r'calculation', CalculationViewSet, basename='calculation')

# Registro del router de assets
router.register(r'assets', AssetModelViewSet, basename='assets')

# Exportar las rutas
urlpatterns = router.urls