from rest_framework.serializers import ModelSerializer
from assets.models import Assets
from rest_framework import serializers #added
from .models import Assets #added
class AssetSerializar(ModelSerializer):
    class Meta:
        model = Assets
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super(AssetSerializar, self).__init__(*args, **kwargs)
        if self.context['request'].method in ['GET']:
            self.fields.pop('id')  
        
      
      


      
#Custom_List_Seralizer
class AssetsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Assets
        fields = ['id', 'AssetType', 'AssetStatus', 'AssetQuantity', 'Description_Assets', 'created_at']
 #