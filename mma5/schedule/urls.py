from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('schedule', views.index, name='schedule'),
    path('profile', views.profile, name='profile'),
    path('instrument', views.instrument, name='instrument'),
    url(r'^lesson/new/$', views.lesson_new, name='lesson_new'),
    url(r'^$', views.HomePageView.as_view())
]