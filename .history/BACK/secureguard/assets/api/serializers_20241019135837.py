from rest_framework.serializers import ModelSerializer
from assets.models import Assets

class AssetSerializar(ModelSerializer):
    class Meta:
        model = Assets
        fields = ['type','state','quantity']

        def __init__(self, *args, **kwargs):
        super(__AssetSerializar__, self).__init__(*args, **kwargs)
        # Verificamos si la acción es GET
        if self.context['request'].method in ['GET']:
            self.fields.pop('other_field')  # Remueve campo no deseado para GET
        # Si es un POST o PUT, podemos dejar todos los campos