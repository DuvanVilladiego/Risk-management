from django.contrib import admin
from people.models import Person

@admin.register(Person)
class UserAdmin(admin.ModelAdmin):
    list_display = ['firstname','username','phone']
