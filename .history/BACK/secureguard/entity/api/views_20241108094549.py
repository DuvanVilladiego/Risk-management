from entity.models import Entity
from rest_framework.viewsets import ModelViewSet
# from entity.api.serializers import 

class EntityModelViewSet(ModelViewSet):
    queryset = Entity.objects.all()
