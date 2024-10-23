from django.db import models

# Create your models here.
class Assets(models.Model):
    "Si"
    type = models.CharField(max_length=50)
    state = models.CharField(max_length=50)
    quantity = models.IntegerField(default=0)
    description = models.TextField(default=0)
    brand = models.CharField(max_length=30)
    serie = models.CharField(max_length=30)
    hardware = models.CharField(max_length=30)
    software = models.CharField(max_length=30)
    ubication = models.CharField(max_length=30)
    price = models.DecimalField(max_digits=8, decimal_places=2)