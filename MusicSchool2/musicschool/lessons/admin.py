from django.contrib import admin
from .models import Student, Teacher, Equiptment

# Register your models here.
#admin.site.register(Student)
#admin.site.register(Teacher)
#admin.site.register(Equiptment)

# Admin Classes

class StudentAdmin(admin.ModelAdmin):
    list_display = ('lastName', 'firstName', 'DOB')

admin.site.register(Student, StudentAdmin)

@admin.register(Teacher)
class TeacherAdmin(admin.ModelAdmin):
	pass

@admin.register(Equiptment)
class EquiptmentAdmin(admin.ModelAdmin):
	pass

class Teacher(admin.ModelAdmin):
    """docstring for Teacher filtering"""
    list_filter = ('firstName', 'lastName')


		

