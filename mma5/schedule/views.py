from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse
from .models import Lesson
from django.contrib.auth.models import User

#defining index page view
def index(request):   
	lessons = Lesson.objects.all()
	return render(request, 'schedule/index.html', context={'lessons':lessons})

def instruments(request):
	return render(request, 'schedule/instruments.html')

def profile(request):
	return render(request, 'schedule/profile.html')

def report(request):
	return render(request, 'schedule/report.html')

def feedback(request):
	return render(request, 'schedule/feedback.html')

# Landing Page View, from generic_template.html
class HomePageView(TemplateView):
	def get(self, request, **kwargs):
		return render(request, 'index.html', context=None)
