# Generated by Django 2.0.4 on 2018-04-17 07:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_user_test_field'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='test_field',
            field=models.CharField(default='Hi', max_length=2),
        ),
    ]
