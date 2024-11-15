from django.db import models
from django.contrib.auth.hashers import make_password, check_password


class Person(models.Model):
    id = models.AutoField(primary_key=True, db_column="personid")
    firstname = models.CharField(max_length=50, blank=False, db_column="firstname")
    lastname = models.CharField(max_length=50, blank=False, db_column="lastname")
    password = models.CharField(max_length=30, blank=False, db_column="password_people")
    phone = models.CharField(max_length=30, blank=False, db_column="phone")
    email = models.CharField(max_length=100, blank=False, db_column="email")
    address = models.CharField(max_length=100, blank=False, db_column="address_people")
    birthday = models.DateField()

    class Meta:
        db_table = "people"