# Generated by Django 2.0.6 on 2019-10-22 06:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('managerapp', '0001_initial'),
    ]

    operations = [
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
