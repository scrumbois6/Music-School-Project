from django import forms
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.db import transaction
from django.contrib.auth.models import Group

from .models import User

class StudentSignUpForm(UserCreationForm):
    street_number = forms.IntegerField(required=True, label='Street number')

    class Meta(UserCreationForm.Meta):
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'mobile_number', 'street_number', 'street_name', 'suburb', 'state', 'post_code', 'under_18', 'guardian_first_name', 'guardian_last_name', 'guardian_mobile_number', 'guardian_email' )
        fieldsets = (
            ('Credentials', {
                'fields': ('username'),
            }),
            ('Contact', {
                'fields': ('first_name', 'last_name','email', 'mobile_number'),
            }),

            ('Address', {
                'fields': ('street_number', 'street_name', 'suburb', 'state', 'post_code'),
            }),
            ('Guardian Info', {
                'fields': ('under_18', 'guardian_first_name', 'guardian_last_name', 'guardian_mobile_number', 'guardian_email'),
            }),
        )
        add_fieldsets = (
            ('Credentials', {
                'fields': ('username'),
            }),
            ('Contact', {
                'fields': ('first_name', 'last_name','email', 'mobile_number'),
            }),

            ('Address', {
                'fields': ('street_number', 'street_name', 'suburb', 'state', 'post_code'),
            }),
            ('Guardian Info', {
                'fields': ('under_18', 'guardian_first_name', 'guardian_last_name', 'guardian_mobile_number', 'guardian_email'),
            }),
        )

    @transaction.atomic
    def save(self):
        user = super().save(commit=False)

        group = Group.objects.get(name='Student')
        user.save()
        user.groups.add(group)

        return user


