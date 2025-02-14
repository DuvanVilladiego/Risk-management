from rest_framework.routers import DefaultRouter
from django.urls import path
from rest_framework_simplejwt.views import  TokenRefreshView
from people.api.views import CustomTokenObtainPairView

router_people = DefaultRouter()

# router_people.register(prefix="entity", basename="entity", viewset=EntityModelViewSet)

urlpatterns = [
    path('auth/login', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('auth/token/refresh', TokenRefreshView.as_view(), name='token_refresh')
]