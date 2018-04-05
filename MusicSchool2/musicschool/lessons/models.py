from django.db import models
from django.urls import reverse
import uuid

# Create your models here.
class Student(models.Model):
    """
    Model representing a student within the Music School
    """
    studentID = models.UUIDField(primary_key=True, default=uuid.uuid4)
    firstName = models.CharField(max_length=30, help_text="Enter your First Name Only")
    lastName = models.CharField(max_length=30, help_text="Enter your Last Name Only")
    DOB = models.DateField(help_text="Enter your Date of Birth")
    teacherID = models.ForeignKey('Teacher', on_delete=models.SET_NULL, null=True)

    def __str__(self):
        """
        String for representing the Model object (in Admin site etc.)
        """
        return self.firstName

class Teacher(models.Model):
    """
    Model representing a teacher within the Music School
    """
    teacherID = models.UUIDField(primary_key=True, default=uuid.uuid4)
    firstName = models.CharField(max_length=30, help_text="Enter your First Name Only")
    lastName = models.CharField(max_length=30, help_text="Enter your Last Name Only")
    skillsSummary = models.TextField(max_length=1000, help_text="Provide a brief summary of your teaching skills and history")
    studentID = models.ManyToManyField(Student, help_text="Select your students", null=True)
    
    def __str__(self):
        """
        String for representing the Model object (in Admin site etc.)
        """
        return self.firstName

    def get_absolute_url(self):
        """
        Returns the url to access details for a teacher.
        """
        return reverse('teacher-detail', args=[str(self.id)])

class Equiptment(models.Model):
    """
    Model representing an instrument available for loan within the Music School
    """
    instrumentID = models.UUIDField(primary_key=True, default=uuid.uuid4)
    instrument = models.CharField(max_length=20, help_text="Enter a name for the instrument")
    due_back = models.DateField(null=True, blank=True)

    LOAN_STATUS = (
        ('m', 'Maintenance'),
        ('o', 'On loan'),
        ('a', 'Available'),
        ('r', 'Reserved'),
        )

    status = models.CharField(max_length=1, choices=LOAN_STATUS, blank=True, default='a', help_text='Instrument availability')

    class Meta:
        ordering = ["due_back"]
        

    def __str__(self):
        """
        String for representing the 'Equiptment' Model object
        """
        return '{0} ({1})'.format(self.id,self.instrument.student)



