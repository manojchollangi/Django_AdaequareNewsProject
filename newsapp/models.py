from django.db import models

# Create your models here.
class NewsDetails(models.Model):
    slno = models.AutoField(primary_key=True)
    news_header = models.CharField(max_length=500, blank=True, null=True)
    news_data = models.TextField(blank=True, null=True)
    news_type = models.CharField(max_length=50, blank=True, null=True)
    news_images_urls = models.CharField(max_length=500, blank=True, null=True)
    publish_date = models.DateField(blank=True, null=True)
    record_start_date = models.DateField(blank=True, null=True)
    record_end_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'news_details'


class NewsType(models.Model):
    slno = models.AutoField(primary_key=True)
    news_type = models.CharField(max_length=50, blank=True, null=True)
    new_type_display = models.CharField(max_length=100, blank=True, null=True)
    record_start_date = models.DateField(blank=True, null=True)
    record_end_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'news_type'
