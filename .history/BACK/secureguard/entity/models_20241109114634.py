from django.db import models


class Entity(models.Model):
    id = models.AutoField(primary_key=True, db_column="entityid")
    name = models.CharField(max_length=100, blank=False, db_column="entityname")
    address = models.CharField(max_length=50, blank=False, db_column="entityaddress")
    phone = models.CharField(max_length=50, blank=True, db_column="entityphone")
    register_date = models.DateTimeField(null=False, db_column="registrationdate")
    main_activity = models.CharField(max_length=50, blank=False, db_column="mainactivity")
    status = models.CharField(max_length=20, blank=False, db_column="entitystatus")
    poeple_id = models.IntegerField(null=False, db_column="peopleid")

    class Meta:
        db_table = "entities"
