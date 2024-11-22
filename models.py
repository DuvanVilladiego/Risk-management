#Custom_List_Model
from django.db import models

class Assets(models.Model):
    AssetType = models.CharField(max_length=100)  # Tipo de cálculo o funcionalidad
    AssetStatus = models.TextField()  # Resultado o estado del cálculo
    AssetQuantity = models.IntegerField()  # Número de elementos involucrados
    Description_Assets = models.TextField()  # Descripción o detalles adicionales
    created_at = models.DateTimeField(auto_now_add=True)  # Fecha de creación

    def __str__(self):
        return f"{self.AssetType} - {self.AssetStatus[:50]}"