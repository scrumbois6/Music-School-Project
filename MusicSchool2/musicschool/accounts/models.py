from django.db import models
from django.urls import reverse
from datetime import date, timedelta
import uuid

# Create your models here.

class Account(models.Model):
    """
    Model representing an account within the Music School
    """
    studentID = models.UUIDField(primary_key=True, default=uuid.uuid4, max_length=8)
    firstName = models.CharField(max_length=30, help_text="Enter your First Name Only")
    lastName = models.CharField(max_length=30, help_text="Enter your Last Name Only")
    DOB = models.DateField(help_text="Enter your Date of Birth")

    def __str__(self):
        """
        String for representing the Model object (in Admin site etc.)
        """
        return self.firstName

    def __str__(self):
        """
        String representing average student age
        """
        l = [DOB, ...]
        today = date.today()
        avg_age = sum((today - x for x in l), timedelta(0)) / len(l)
        return self.avg_age
