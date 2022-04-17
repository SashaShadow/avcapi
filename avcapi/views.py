from avcapi.models import Songs
from avcapi.serializers import SongsSerializer
from rest_framework import generics
from rest_framework import permissions
from rest_framework.decorators import api_view
from rest_framework.reverse import reverse
from rest_framework.response import Response

# Create your views here.

@api_view(['GET'])
def api_root(request, format=None):
    return Response({
        'songs': reverse('song-list', request=request, format=format)
    })


# I like this way to do it lol
class SongList(generics.ListCreateAPIView):
    queryset = Songs.objects.all()
    serializer_class = SongsSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly]
    filter_fields = ["nombre"]


class SongDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Songs.objects.all()
    serializer_class = SongsSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly]



# class SongViewSet(viewsets.ModelViewSet):
#     """
#     This viewset automatically provides `list`, `create`, `retrieve`,
#     `update` and `destroy` actions.
#     """
#     queryset = Songs.objects.all()
#     serializer_class = SongsSerializer
#     permission_classes = [permissions.IsAuthenticatedOrReadOnly]

# old function based views
# @api_view(['GET', 'POST'])
# def song_list(request,format=None):
#     """
#     List all code songs, or create a new song.
#     """
#     if request.method == 'GET':
#         songs = Songs.objects.all()
#         serializer = SongsSerializer(songs, many=True)
#         return Response(serializer.data)

#     elif request.method == 'POST':
#         serializer = SongsSerializer(data=request.data)
#         if serializer.is_valid():
#             serializer.save()
#             return Response(serializer.data, status=status.HTTP_201_CREATED)
#         return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# @api_view(['GET', 'PUT', 'DELETE'])
# def song_detail(request, pk, format=None):
#     """
#     Retrieve, update or delete a code song.
#     """
#     try:
#         song = Songs.objects.get(pk=pk)
#     except Songs.DoesNotExist:
#         return Response(status=status.HTTP_404_NOT_FOUND)

#     if request.method == 'GET':
#         serializer = SongsSerializer(song)
#         return Response(serializer.data)

#     elif request.method == 'PUT':
#         serializer = SongsSerializer(song, data=request.data)
#         if serializer.is_valid():
#             serializer.save()
#             return Response(serializer.data)
#         return Response(serializer.errors, status=400)

#     elif request.method == 'DELETE':
#         song.delete()
#         return Response(status=status.HTTP_204_NO_CONTENT)