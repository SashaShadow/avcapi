from django.contrib import admin
from avcapi.models import Songs
# Register your models here.

class SongsAdmin(admin.ModelAdmin):
    fields    = ('id', 'nombre', 'año_de_composición', 'duración_segundos', 'compositores', 'letra')

    #list of fields to display in django admin
    list_display = ['id', 'nombre', 'año_de_composición', 'duración_segundos', 'compositores', 'letra']

    #if you want django admin to show the search bar, just add this line
    search_fields = ['nombre']

    #to define model data list ordering
    ordering = ('id','nombre')

admin.site.register(Songs, SongsAdmin)
