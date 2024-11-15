from django.urls import path
from rest_framework_simplejwt.views import  TokenRefreshView
from people.api.views import CustomTokenObtainPairView, UserViewSet

urlpatterns = [
    path('auth/login', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('auth/token/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    path('user/', UserViewSet.as_view(), name='user')

]