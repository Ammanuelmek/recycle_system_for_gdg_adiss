from django.shortcuts import render
from rest_framework import generics, permissions

from .models import Blog
from .serializers import BlogSerializer
# Create your views here.
class BlogListView(generics.ListAPIView):
    queryset = Blog.objects.all()
    serializer_class = BlogSerializer

class BlogDetailView(generics.RetrieveDestroyAPIView):
    queryset = Blog.objects.all()
    serializer_class = BlogSerializer

class BlogCreateView(generics.CreateAPIView):
    permission_classes = (permissions.IsAdminUser,)
    queryset = Blog.objects.all()
    serializer_class = BlogSerializer
