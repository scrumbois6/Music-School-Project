# Generated by Django 2.0.5 on 2018-05-29 20:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schedule', '0011_auto_20180529_1858'),
    ]

    operations = [
        migrations.AddField(
            model_name='lesson',
            name='feedback_student',
            field=models.CharField(default='Great, Job!', max_length=256),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='lesson',
            name='feedback_teacher',
            field=models.CharField(default='Great Job!', max_length=256),
            preserve_default=False,
        ),
    ]