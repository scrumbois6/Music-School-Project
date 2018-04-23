from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import UserCreationForm
from .models import User

#Register the standard user model (don't delete this line)
admin.site.register(User, UserAdmin)


#Create custom user admin so that form fields for any custom fields can be added to 
#Django Admin
class UserAdmin(UserAdmin):



	#Leave username, pw1 and pw2 in fields and append only custom fields
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('username', 'password1', 'password2', 'test_field', ),
        }),
    )

    list_display = ('id','last_name','first_name','test_field','is_staff')

#unregister standard user
admin.site.unregister(User)
#register custom user and custom admin
admin.site.register(User, UserAdmin)