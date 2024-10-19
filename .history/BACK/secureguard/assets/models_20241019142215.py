from django.db import models

# Create your models here.
class Assets(models.Model):
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

    def __init__(self, type, state, quantity=0, description="", brand="", serie="", hardware="", software="", ubication="", price=0.00, *args, **kwargs):
        super().__init__(*args, **kwargs)  # Llama al constructor de la clase padre
        self.type = type
        self.state = state
        self.quantity = quantity
        self.description = description
        self.brand = brand
        self.serie = serie
        self.hardware = hardware
        self.software = software
        self.ubication = ubication
        self.price = price
    