from django.db import models

from django.contrib.auth.models import AbstractUser

class User(AbstractUser):

	#Add extra fields here

	#To Add:

	#phone
	#street number
	#street name
	#suburb
	#state
	#postcode

	#under18?
	#guardian firstName
	#guardian lastName


	test_field = models.CharField(max_length = 2, default = "Hi")
	
