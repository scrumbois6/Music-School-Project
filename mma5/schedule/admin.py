from django.contrib import admin

from .models import Lesson, Inst



# Register your models here.
@admin.register(Lesson)
class LessonAdmin(admin.ModelAdmin):
    list_display = ('id','lesson_time','lesson_location')

@admin.register(Inst)
class LessonAdmin(admin.ModelAdmin):
    list_display = ('id','due_back', 'loan_student')
