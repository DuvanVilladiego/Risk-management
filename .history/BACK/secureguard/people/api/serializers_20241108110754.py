from rest_framework_simplejwt.serializers import TokenObtainPairSerializer

class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)

        token['username'] = person.username
        # token['is_superuser'] = person.is_superuser 
        # token['roles'] = list(person.groups.values_list('name', flat=True))  
        # token['permissions'] = list(person.user_permissions.values_list('codename', flat=True))  

        return token