# Generated by Django 4.0.4 on 2022-04-15 16:01

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Songs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(blank=True, max_length=30, null=True)),
                ('año_de_composición', models.IntegerField(blank=True, null=True)),
                ('duración_segundos', models.IntegerField(blank=True, null=True)),
                ('compositores', models.CharField(blank=True, max_length=255, null=True)),
                ('letra', models.CharField(blank=True, max_length=2000, null=True)),
            ],
            options={
                'db_table': 'songs',
                'ordering': ['nombre'],
                'managed': False,
            },
        ),
    ]
