from django.db import models

from django.contrib.auth.models import User, AbstractUser

class User(AbstractUser):


	STATE_CHOICES = (
        ("QLD", 'Queensland'),
        ("NSW", 'New South Wales'),
        ("ACT", 'ACT'),
        ("VIC", 'Victoria'),
        ("TAS", 'Tasmania'),
        ("SA", 'South Australia'),
        ("WA", 'Western Australia'),
        ("NT", 'Northern Territory')
    )
    
#CUSTOM FIELDS --------------------------------------------------------------------

	#mobile
	mobile_number = models.CharField(max_length = 10, default ="")
	#street number
	street_number = models.CharField(default = "", max_length = 4)
	#street name
	street_name = models.CharField(max_length = 40, default ="")
	#suburb
	suburb = models.CharField(max_length = 20, default = "")
	#state
	state = models.CharField(max_length = 3, default = "QLD", choices = STATE_CHOICES )
	#postcode
	post_code = models.CharField(max_length = 4, default = "")
	#under18?
	under_18 = models.BooleanField(default = "False")
	#guardian firstName
	guardian_first_name = models.CharField(max_length = 40, default ="", blank = 'True')
	#guardian lastName
	guardian_last_name = models.CharField(max_length = 40, default ="", blank = 'True')
	#guardian phone
	guardian_mobile_number = models.CharField(max_length = 10, default ="", blank = 'True')
	#guardian email
	guardian_email = models.EmailField(max_length=254, default = "", blank = 'True')

	
