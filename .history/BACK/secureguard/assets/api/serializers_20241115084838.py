from rest_framework.serializers import ModelSerializer
from assets.models import Assets

class AssetSerializer(ModelSerializer):
    class Meta:
        model = Assets
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super(AssetSerializer, self).__init__(*args, **kwargs)
        if self.context['request'].method in ['GET']:
            self.fields.pop('id')  
        
      


