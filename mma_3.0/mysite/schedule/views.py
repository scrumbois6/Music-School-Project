from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse

#defining index page view
def index(request):
    return render(request, 'schedule/index.html')

#defining schedule page view
def schedule(request):
	return render(request, 'schedule/schedule.html')

def instruments(request):
	return render(request, 'schedule/instruments.html')

def profile(request):
	return render(request, 'schedule/profile.html')

# Landing Page View, from generic_template.html
class HomePageView(TemplateView):
	def get(self, request, **kwargs):
		return render(request, 'index.html', context=None)
