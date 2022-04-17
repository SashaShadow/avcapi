# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from pygments.lexers import get_all_lexers
from pygments.styles import get_all_styles

LEXERS = [item for item in get_all_lexers() if item[1]]
LANGUAGE_CHOICES = sorted([(item[1][0], item[0]) for item in LEXERS])
STYLE_CHOICES = sorted([(item, item) for item in get_all_styles()])

class Songs(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=30, blank=True, null=True)
    año_de_composición = models.IntegerField(blank=True, null=True)
    duración_segundos = models.IntegerField(blank=True, null=True)
    compositores = models.CharField(max_length=255, blank=True, null=True)
    letra = models.CharField(max_length=2000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'songs'
        ordering = ['id']