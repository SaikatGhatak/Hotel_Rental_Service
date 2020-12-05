"""HRS_MAIN_FOLDER URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from HRS_APP import views as HRS_APP_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',HRS_APP_views.login, name='login'),

    path('submit',HRS_APP_views.submit, name='submit'),
    path('signup',HRS_APP_views.signup, name='signup'),
    path('signupSubmit',HRS_APP_views.signupSubmit, name='submit'),

   
    


    #Customer Page Part
    path('HOME', HRS_APP_views.customer_home, name='customer_home'),

    path('customer_profile',HRS_APP_views.customer_profile_details, name='profile'),
    path('booking_details',HRS_APP_views.my_booking_status, name='my_booking_status'),
    path('customer_change_password',HRS_APP_views.customer_change_password, name='customer_change_password'),
    path('update_your_password',HRS_APP_views.update_your_password, name='update_your_password'),
    path('logout',HRS_APP_views.logout, name='logout'),
    path('update_customer_profile',HRS_APP_views.update_customer_profile, name='update_customer_profile'),

    #New Booking Part
    path('single_room',HRS_APP_views.single_room, name='single_room'),
    path('double_room',HRS_APP_views.double_room, name='double_room'),
    path('triple_room',HRS_APP_views.triple_room, name='triple_room'),
    path('quad_room',HRS_APP_views.quad_room, name='quad_room'),

    path('booking',HRS_APP_views.book, name='book'),
    path('confirm_book',HRS_APP_views.confirm_book, name='confirm_book'),
    path('view_details',HRS_APP_views.view_details, name='view_details'),




   

]
