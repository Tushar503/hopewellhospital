# Generated by Django 2.0.6 on 2019-10-23 04:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('staffapp', '0003_remove_staff_userdepartment'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='staff',
            name='userPost',
        ),
        migrations.AddField(
            model_name='staff',
            name='roleId',
            field=models.CharField(default='', max_length=1),
        ),
    ]
