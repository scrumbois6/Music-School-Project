from django.shortcuts import render
from django.views.generic import TemplateView
from .models import Student, Teacher
from datetime import date, timedelta

#average student age method
# l = [datetime.date(Student.DOB), ...]
#     today = datetime.date.today()
#     avg_age = sum((today - x for x in l), timedelta(0)) / len(l)
#     return avg_age

# Create your views here.

# Landing Page View.
class HomePageView(TemplateView):
    def get(self, request, **kwargs):
        return render(request, 'index.html', context=None)

#home page view function
def index(request):
	#Generate dynamic counts of some of the main objects within the Music-School DB to display in the body as general stats
	num_students = Student.objects.all().count() #student stat
	#avg_student_age = l #student stat
	##
	num_teachers = Teacher.objects.all().count() #teacher stat

	#Render the HTML template index.html with the above data
	return render(
		request,
		'index.html',
		context={'num_students':num_students, 'num_teachers':num_students},
		)
