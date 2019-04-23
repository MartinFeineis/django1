from django.db import models

# Create your models here.

class NewPost(models.Model):
    id = models.CharField(max_length=128)
    def __str__(self):
        return self.id
