from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('schedule', views.index, name='index'),
    path('report', views.report, name='report'),
    url(r'^$', views.HomePageView.as_view())
]