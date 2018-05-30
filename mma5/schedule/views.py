from django.shortcuts import render, redirect
from django.views.generic import TemplateView

from django.urls import reverse
from .forms import LessonForm




from .models import Lesson, Inst
#from .forms import submitComment



from django.contrib.auth.models import User



#defining index page view
def index(request):
	lessons = Lesson.objects.all()
	return render(request, 'schedule/index.html', context={'lessons':lessons})



def profile(request):
	return render(request, 'schedule/profile.html')



def instrument(request):
	instrument = Inst.objects.all()
	return render(request, 'schedule/instrument.html', context={'instrument':instrument})


def lesson_new(request):
    if request.method == "POST":
        form = LessonForm(request.POST)
        if form.is_valid():
            lesson = form.save(commit=False)
            lesson.student = request.user
            lesson.lesson_time = request.lesson_time
            lesson.lesson_duration = request.lesson_duration
            lesson.lesson_instrument = request.lesson_instrument
            lesson.save()
            return redirect('index')
    else:
        form = LessonForm()
    return render(request, 'schedule/lesson_edit.html', {'form': form})



# Landing Page View, from generic_template.html
class HomePageView(TemplateView):
	def get(self, request, **kwargs):
		return render(request, 'index.html', context=None)
