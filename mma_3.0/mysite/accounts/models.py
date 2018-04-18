from django.db import models

from django.contrib.auth.models import AbstractUser

class User(AbstractUser):

	#Add extra fields here
	#test_field = models.CharField(max_length = 2, default = "Hi")
	pass
