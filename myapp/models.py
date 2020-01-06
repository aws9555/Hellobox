from django.db import models

# Create your models here.
class Box(models.Model):
    box_num = models.IntegerField(primary_key=True)
    box_size = models.CharField(max_length=10, blank=True, null=True)
    box_price = models.IntegerField(blank=True, null=True)
    box_isuse = models.CharField(max_length=5, blank=True, null=True)
    box_sdate = models.DateTimeField(blank=True, null=True)
    box_pwd = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'box'


class Log(models.Model):
    log_num = models.AutoField(primary_key=True)
    log_bno = models.ForeignKey(Box, models.DO_NOTHING, db_column='log_bno', blank=True, null=True)
    log_sdate = models.DateTimeField(blank=True, null=True)
    log_edate = models.DateTimeField(blank=True, null=True)
    log_pay = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'log'