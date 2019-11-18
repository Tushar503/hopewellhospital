# Generated by Django 2.0.6 on 2019-11-18 04:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('staffapp', '0003_patientprescription'),
    ]

    operations = [
        migrations.CreateModel(
            name='PatientTest',
            fields=[
                ('TestId', models.AutoField(primary_key=True, serialize=False)),
                ('TestName', models.CharField(default='', max_length=50, unique=True)),
                ('TestPrice', models.CharField(default='', max_length=50)),
                ('TestDate', models.CharField(default='', max_length=50)),
                ('ReportDate', models.CharField(default='', max_length=50)),
                ('isAvailable', models.BooleanField(default=True)),
                ('DoctorId', models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='staffapp.Staff')),
                ('PatientId', models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='staffapp.Appointment')),
            ],
        ),
    ]
