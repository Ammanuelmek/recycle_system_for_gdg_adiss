# Generated by Django 3.0.5 on 2020-10-10 08:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_auto_20201010_1024'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='birthDate',
            field=models.DateField(null=True),
        ),
    ]