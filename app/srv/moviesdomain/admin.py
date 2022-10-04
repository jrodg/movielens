from django.contrib import admin
from .models import Tags
# Register your models here.

@admin.register(Tags)

class MoviesAdmin(admin.ModelAdmin):
    fields = ('userid', 'movieid','tag', 'timestamp', )
    list_display = ('userid', 'movieid','tag', 'timestamp', )
    list_filter = ('movieid','tag',)
    readonly_fields=('userid')
    



