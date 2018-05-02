from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('schedule', views.schedule, name='schedule'),
    url(r'^$', views.HomePageView.as_view())
]