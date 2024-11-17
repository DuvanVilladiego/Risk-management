from django.contrib import admin
from people.models import User

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ['firstname','username','phone']
