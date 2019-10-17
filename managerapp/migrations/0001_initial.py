# Generated by Django 2.0.6 on 2019-10-17 03:45

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
                ('depttName', models.CharField(default='', max_length=50)),
                ('isActive', models.BooleanField(default=True)),
            ],
        ),
    ]