from rest_framework.serializers import ModelSerializer
from assets.models import Assets

class AssetSerializar(ModelSerializer):
     def __init__(self, *args, **kwargs):
        super(AssetSerializar, self).__init__(*args, **kwargs)
        
        if self.context['request'].method in ['GET']:
            self.fields.pop('other_field')  

    class Meta:
        model = Assets
        fields = ['type','state','quantity']
        