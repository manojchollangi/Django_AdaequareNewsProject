from rest_framework import serializers
from .models import NewsDetails, NewsType


class NewsDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = NewsDetails
        fields = ['slno', 'news_header', 'news_data', 'news_images_urls','publish_date']
