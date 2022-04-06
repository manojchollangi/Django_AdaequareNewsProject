# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


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
