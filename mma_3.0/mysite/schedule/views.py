from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse


def index(request):
    return render(request, 'schedule/index.html')

# Landing Page View, from generic_template.html
class HomePageView(TemplateView):
	def get(self, request, **kwargs):
		return render(request, 'index.html', context=None)
