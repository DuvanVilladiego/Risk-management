from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework.serializers import ModelSerializer
from people.models import User

class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)

        token['username'] = user.username
        token['is_superuser'] = user.is_superuser 
        token['roles'] = list(user.groups.values_list('name', flat=True))
        token['permissions'] = list(user.user_permissions.values_list('codename', flat=True))

        return token
    
class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'
        

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user
    