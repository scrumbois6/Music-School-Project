from django.contrib import admin

from .models import Lesson



# Register your models here.
@admin.register(Lesson)
class LessonAdmin(admin.ModelAdmin):
    list_display = ('id','lesson_time','lesson_student','lesson_teacher','lesson_location')
