from django.contrib import admin
from .models import Account

# Register your models here.
class AccountAdmin(admin.ModelAdmin):
    list_display = ('lastName', 'firstName', 'DOB')

admin.site.register(Account, AccountAdmin)
