from rest_framework import serializers
from avcapi.models import Songs, LANGUAGE_CHOICES, STYLE_CHOICES
from django.contrib.auth.models import User

class UserSerializer(serializers.ModelSerializer):
    songs = serializers.PrimaryKeyRelatedField(many=True, queryset=Songs.objects.all())

    class Meta:
        model = User
        fields = ['id', 'username', 'songs']

class SongsSerializer(serializers.HyperlinkedModelSerializer):

    id = serializers.HyperlinkedIdentityField(
        view_name='song-detail',
    )

    class Meta:
        model = Songs
        fields = ['id', 'nombre', 'año_de_composición', 'duración_segundos', 'compositores', 'letra']