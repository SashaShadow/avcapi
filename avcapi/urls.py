from django.urls import path
from avcapi import views
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('', views.api_root),
    path('api/', views.SongList.as_view(), name='song-list'),
    path('api/<int:pk>/', views.SongDetail.as_view(), name='song-detail'),
]

urlpatterns = format_suffix_patterns(urlpatterns)