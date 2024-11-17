from rest_framework.serializers import ModelSerializer
from entity.models import Entity

class EntitySerializer(ModelSerializer):
    class Meta:
        model = Entity
        fields = '__all__'