from rest_framework.serializers import ModelSerializer
from assets.models import Assets

class AssetSerializar(ModelSerializer):
    def __init__(self, *args, **kwargs):
        super(AssetSerializar, self).__init__(*args, **kwargs)
        # Lógica adicional si es necesario
        if self.context['request'].method == 'GET':
            self.fields.pop('some_field')  # Ajusta según tus necesidades

    class Meta:
        model = Assets
        fields = ['type', 'state', 'quantity']  # Asegúrate de que esta línea esté correctamente indentada
