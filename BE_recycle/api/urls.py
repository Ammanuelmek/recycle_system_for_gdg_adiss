from django.urls import path, include
from .views import BlogListView, BlogDetailView, BlogCreateView
urlpatterns = [
    path('', BlogListView.as_view()), 
    path('<int:pk>', BlogDetailView.as_view()),
    path('create/', BlogCreateView.as_view()),
]