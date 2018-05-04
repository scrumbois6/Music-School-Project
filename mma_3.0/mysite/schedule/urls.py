from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('schedule', views.index, name='index'),
    path('instruments', views.instruments, name='instruments'),
    path('profile', views.profile, name='profile'),
    path('report', views.report, name='report'),
    url(r'^$', views.HomePageView.as_view())
]