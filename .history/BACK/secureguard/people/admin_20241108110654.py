from django.contrib import admin
from people.models import user

@admin.register(user)
class UserAdmin(admin.ModelAdmin):
    list_display = ['firstname','username','phone']
