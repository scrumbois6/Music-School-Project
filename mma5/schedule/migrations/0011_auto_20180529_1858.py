# Generated by Django 2.0.5 on 2018-05-29 18:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schedule', '0010_auto_20180529_1855'),
    ]

    operations = [
        migrations.AlterField(
            model_name='inst',
            name='instrument_condition',
            field=models.CharField(choices=[('Excellent', 'Excellent'), ('Great', 'Great'), ('Good', 'Good'), ('Poor', 'Poor'), ('Broken', 'Broken')], default='1', max_length=10),
        ),
    ]