from django.contrib import admin
from person.models import Person
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

# Register your models here.
@admin.register(Person)
class UserAdmin(BaseUserAdmin):
    pass