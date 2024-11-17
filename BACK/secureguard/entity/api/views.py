from entity.models import Entity
from rest_framework.viewsets import ModelViewSet
from entity.api.serializers import EntitySerializer

class EntityModelViewSet(ModelViewSet):
    serializer_class = EntitySerializer
    queryset = Entity.objects.all()
