from django.db import models
from django.contrib.auth.hashers import make_password, check_password


class user(models.Model):
    id = models.AutoField(primary_key=True, db_column="personid")
    firstname = models.CharField(max_length=50, blank=False, db_column="firstname")
    lastname = models.CharField(max_length=50, blank=False, db_column="lastname")
    password = models.CharField(max_length=30, blank=False, db_column="password_people")
    phone = models.CharField(max_length=30, blank=False, db_column="phone")
    username = models.CharField(max_length=100, unique=True ,blank=False, db_column="email")
    address = models.CharField(max_length=100, blank=False, db_column="address_people")
    birthday = models.DateField()


    def set_password(self, raw_password):
        self.password = make_password(raw_password)

    def check_password(self, raw_password):
        return check_password(raw_password, self.password)

    def __str__(self):
        return self.username
    
    class Meta:
        db_table = "people"

        