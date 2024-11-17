from django.contrib import admin
from person.models import Person

@admin.register(Person)
class UserAdmin(admin.ModelAdmin):
    list_display = ['firstname','username','phone']
