from django.db import models

# Create your models here.

class Assets(models.Model):
    assetType = models.CharField(max_length=50)