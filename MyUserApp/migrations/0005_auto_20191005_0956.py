# Generated by Django 2.0.6 on 2019-10-05 04:26

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('MyUserApp', '0004_auto_20191004_1143'),
    ]

    operations = [
        migrations.RenameField(
            model_name='usersignup',
            old_name='UserCity',
            new_name='userCity',
        ),
        migrations.RenameField(
            model_name='usersignup',
            old_name='UserState',
            new_name='userState',
        ),
    ]
