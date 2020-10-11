from django.contrib import admin
from django.contrib.auth.admin import UserAdmin

from .models import Blog, Profile
from .forms import ProfileCreateForm, ProfileChangeForm
# Register your models here.
class ProfileAdmin(UserAdmin):
    add_form = ProfileCreateForm
    form = ProfileChangeForm
    model = Profile
    list_display = ['first_name', 'last_name', 'email', 'username', 'profilePic', 'birthDate']
admin.site.register(Profile, ProfileAdmin)
admin.site.register(Blog)