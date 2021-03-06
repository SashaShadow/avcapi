# Generated by Django 4.0.4 on 2022-04-17 22:01

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Songs',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=30, null=True)),
                ('año_de_composición', models.IntegerField(blank=True, null=True)),
                ('duración_segundos', models.IntegerField(blank=True, null=True)),
                ('compositores', models.CharField(blank=True, max_length=255, null=True)),
                ('letra', models.CharField(blank=True, max_length=2000, null=True)),
            ],
            options={
                'db_table': 'songs',
                'ordering': ['id'],
                'managed': False,
            },
        ),
    ]
