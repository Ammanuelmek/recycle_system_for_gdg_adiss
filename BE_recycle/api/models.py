from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import User
# Create your models here.
class Blog(models.Model):
    title = models.CharField(max_length=400, blank=False)
    body = models.TextField()
    descImage = models.ImageField(upload_to='Desc')
    createdAt = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title


class CompanyTable(models.Model):
    compChoices = (('PLC', 'PLC'), ('Gov', 'Gov'), ('NGO', 'NGO'))
    companyName = models.CharField(max_length=200, blank=False)
    companyProduct = models.CharField(max_length=200)
    companyType = models.CharField(max_length=100, choices=compChoices)

class ProductsTable(models.Model):
    productID = models.CharField(max_length=200, null=False)
    companyID = models.OneToOneField(CompanyTable, on_delete=models.CASCADE, related_name='compProduct')
    createdAt = models.DateTimeField(auto_now=True)
    usedBy = models.OneToOneField(User, on_delete=models.CASCADE, related_name='usedProducts', null=True)
    


class Profile(AbstractUser):
    profilePic = models.ImageField(upload_to='Profiles', null=True)
    birthDate = models.DateField(null=True)


    



