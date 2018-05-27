from django import forms
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.db import transaction
from django.contrib.auth.models import Group

from .models import User

class LessonComment(forms.Form):
    lesson_student_id = forms.CharField(help_text="Enter your student ID.")
    lesson_teacher_id = forms.CharField(help_text="Enter your teacher ID.")
    lesson_comment = forms.CharField(help_text="Enter your teacher ID.")

class StudentSignUpForm(UserCreationForm):
    street_number = forms.IntegerField(required=True, label='Street number')

    class Meta(UserCreationForm.Meta):
        model = User
        fields = ('username', 'email', 'mobile_number', 'street_number', 'street_name')
        fieldsets = (
            (None, {
                'fields': ('username', 'email', 'mobile_number'),
            }),
            ('Address', {
                'fields': ('street_number', 'street_name'),
            }),
        )
        add_fieldsets = (
            (None, {
                'fields': ('username', 'email', 'mobile_number'),
            }),
            ('Address', {
                'fields': ('street_number', 'street_name'),
            }),
        )

    @transaction.atomic
    def save(self):
        user = super().save(commit=False)

        group = Group.objects.get(name='Student')
        user.save()
        user.groups.add(group)

        return user


