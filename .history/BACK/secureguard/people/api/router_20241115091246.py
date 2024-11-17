from django.urls import path, includes
from rest_framework.routers import DefaultRouter
from rest_framework_simplejwt.views import  TokenRefreshView
from people.api.views import CustomTokenObtainPairView, UserViewSet

router_user = DefaultRouter()

router_user.register(prefix="user", basename="user", viewset=UserViewSet)

urlpatterns = [
    path('auth/login', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('auth/token/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/', include(router_user.urls))
]