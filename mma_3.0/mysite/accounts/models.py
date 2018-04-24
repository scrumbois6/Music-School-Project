from django.db import models

from django.contrib.auth.models import User, AbstractUser

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

	#this test field has been implemented correctly and added
	#to django admin. leave here for testing
	test_field = models.CharField(max_length = 10, default = "Hi")
	
