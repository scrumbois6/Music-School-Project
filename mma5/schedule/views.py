from django.shortcuts import render, get_object_or_404
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

from .models import Lesson
from .forms import submitComment

from django.contrib.auth.models import User

#lesson comment form view
def submit_comment(request):

    # If this is a POST request then process the Form data
    if request.method == 'POST':

        # Create a form instance and populate it with data from the request (binding):
        form = LessonComment(request.POST)

        # Check if the form is valid:
        if form.is_valid():
            # process the data in form.lesson_comment as required (here we just write it to the model due_back field)
            schedule_lesson.lesson_comment = form.LessonComment('lesson_comment')
            schedule_lesson.save()

            # redirect to a new URL:
            return HttpResponseRedirect(reverse('index') )

    return render(request, 'schedule/feedback.html', {'form': form})

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
