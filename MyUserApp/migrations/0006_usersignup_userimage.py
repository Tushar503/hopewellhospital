# Generated by Django 2.0.6 on 2019-10-15 17:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MyUserApp', '0005_auto_20191005_0956'),
    ]

    operations = [
        migrations.AddField(
            model_name='usersignup',
            name='userImage',
            field=models.CharField(default='', max_length=200),
        ),
    ]
