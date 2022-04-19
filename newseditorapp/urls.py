from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    path("newscategory",views.news_category),
    path("",views.news_category),
    path('newscategory/news',views.news),
    path('newscategory/edit/<int:slno>',views.NewsTypeEdit),
    path('newscategory/edit/update/<int:slno>', views.NewsTypeUpdate),
]
