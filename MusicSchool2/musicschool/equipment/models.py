from django.db import models
import uuid

# Create your models here.

class Equipment(models.Model):
    """
    Model representing an instrument available for loan within the Music School
    """
    instrumentID = models.UUIDField(primary_key=True, default=uuid.uuid4, max_length=8)
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
        String for representing the 'Equipment' Model object
        """
        return '{0} ({1})'.format(self.instrumentID,self.instrument)
