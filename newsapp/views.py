from django.shortcuts import render
from .models import NewsType, NewsDetails
from django.http import JsonResponse, HttpResponse
from .serializers import *


# Create your views here.


def news_types_view(request):
    news_list = NewsType.objects.all()
    news_types = {"news_list": news_list}
    return render(request, 'testapp/news.html', news_types)


def get_news_types(request):
    if request.method == "GET":
        news_types = NewsType.objects.all()
    return HttpResponse({'news_types': news_types})


def get_news_details(request):
    print("get_news_details")
    news_type = request.GET.get('news_type')
    print(news_type)
    news_details = (NewsDetails.objects.filter(news_type=news_type)).order_by('-publish_date')
    serializer = NewsDetailsSerializer(news_details, many=True)
    return JsonResponse({'news': serializer.data})
