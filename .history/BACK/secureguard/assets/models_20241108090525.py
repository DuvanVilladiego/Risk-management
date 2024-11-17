from django.core.exceptions import ValidationError
from django.db import models


# Create your models here.
class Assets(models.Model):
    id = models.AutoField(primary_key=True, db_column="assetid")
    type = models.CharField(max_length=50, blank=False, db_column="assettype")
    state = models.CharField(max_length=50, blank=False, db_column="assetstatus")
    quantity = models.IntegerField(default=0, null=False, db_column="assetquantity")
    description = models.TextField(
        default=0, blank=False, db_column="description_assets"
    )
    brand = models.CharField(max_length=30, blank=False, db_column="brand")
    serie = models.CharField(max_length=30, blank=False, db_column="serialnumber")
    hardware = models.CharField(max_length=30, blank=False, db_column="hardwaredetails")
    software = models.CharField(max_length=30, blank=False, db_column="softaredetails")
    ubication = models.CharField(max_length=30, blank=False, db_column="location_asset")
    price = models.DecimalField(
        max_digits=8, decimal_places=2, null=False, db_column="assetcost"
    )
    entityId = models.IntegerField(null=True, db_column='entityid')

    class Meta:
        db_table = "assets"

    def clean(self):
        if self.quantity < 0:
            raise ValidationError("La cantidad no puede ser negativa.")
        if self.price < 0:
            raise ValidationError("El precio no puede ser negativo.")

    def save(self, *args, **kwargs):
        self.clean()
        super().save(*args, **kwargs)
