# Generated by Django 2.0.6 on 2019-11-11 04:17

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Department',
            fields=[
                ('depttId', models.AutoField(primary_key=True, serialize=False)),
                ('depttName', models.CharField(default='', max_length=50, unique=True)),
                ('isActive', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Loginrecords',
            fields=[
                ('loginId', models.AutoField(primary_key=True, serialize=False)),
                ('loginTime', models.CharField(default='', max_length=50)),
                ('logoutTime', models.CharField(default='', max_length=50)),
                ('userId', models.CharField(default='', max_length=50)),
                ('ip_address', models.CharField(default='', max_length=50)),
                ('mac_address', models.CharField(default='', max_length=50)),
            ],
        ),
    ]
