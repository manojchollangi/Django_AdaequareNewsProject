from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    path('', views.news_types_view),
    path('news_types', views.get_news_types),
    path('news', views.get_news_details),
]
