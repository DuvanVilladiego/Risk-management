from rest_framework_simplejwt.views import TokenObtainPairView
from people.api.serializers import CustomTokenObtainPairSerializer, UserSerializer
from people.models import User

class CustomTokenObtainPairView(TokenObtainPairView):
    serializer_class = CustomTokenObtainPairSerializer


class UserViewSet(ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer