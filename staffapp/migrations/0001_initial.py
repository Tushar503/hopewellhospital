# Generated by Django 2.0.6 on 2019-10-17 07:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('managerapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Staff',
            fields=[
                ('userFullName', models.CharField(default='', max_length=200)),
                ('userEmail', models.CharField(default='', max_length=200, primary_key=True, serialize=False)),
                ('userPassword', models.CharField(default='', max_length=200)),
                ('userMobile', models.CharField(default='', max_length=200)),
                ('userAge', models.CharField(default='', max_length=10)),
                ('userAddress', models.CharField(default='', max_length=500)),
                ('userCity', models.CharField(default='', max_length=10)),
                ('userState', models.CharField(default='', max_length=200)),
                ('userImage', models.CharField(default='', max_length=200)),
                ('isActive', models.BooleanField(default=True)),
                ('userOtp', models.CharField(default='', max_length=10)),
                ('userOtptime', models.CharField(default='', max_length=200)),
                ('userToken', models.CharField(default='', max_length=200)),
                ('isAvailable', models.BooleanField(default=True)),
                ('isQueue', models.BooleanField(default=False)),
                ('isVerified', models.BooleanField(default=False)),
                ('depttId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='managerapp.Department')),
            ],
        ),
    ]