from django.contrib import admin
from .models import *

admin.site.register(Employee)
admin.site.register(Restaurant)
admin.site.register(Review)
admin.site.register(BookHour)
admin.site.register(Group)


@admin.register(MenuItem)
class ImportantV(admin.ModelAdmin):
    list_display = ('id', 'name', 'description', 'price', 'section', 'restaurant')
    list_display_links = ('name', )
    list_filter = ('section', 'restaurant' )


@admin.register(Appointment)
class ImportantV(admin.ModelAdmin):
    list_display = ('id', 'ap_date', 'ap_hour', 'ap_places', 'ap_rest', 'ap_message', 'ap_name', 'ap_phone', 'ap_new')
    list_display_links = ('ap_date', 'ap_hour', 'ap_name', 'ap_phone', )
    list_filter = ('ap_new', 'ap_rest',)
