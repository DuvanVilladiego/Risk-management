from rest_framework.serializers import ModelSerializer
from assets.models import Assets

class AssetSerializar(ModelSerializer):
    class Meta:
        model = Assets
        fields = ['type','state','quantity']