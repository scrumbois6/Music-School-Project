from django.urls import include, path
from django.conf.urls import url
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
	path('', include('django.contrib.auth.urls')),
	path('login', auth_views.login, name='login'),
    path('logout', auth_views.logout, name='logout'),
    path('register', views.SignUp.as_view(), name='register'),
]