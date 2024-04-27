from django.db.models.aggregates import Sum
from django.shortcuts import render
from .forms import *
from .models import *


menu = [{'title': 'Начало', 'url_name': 'home'},
        {'title': 'За нас', 'url_name': 'about'},
        {'title': 'Резервации', 'url_name': 'book_now'},
        {'title': 'Контакти', 'url_name': 'contact'},
        ]


# Начална страница
def index(request):
    rest_num = len(Restaurant.objects.all())
    reviews = Review.objects.all()
    context = {'menu': menu,
               'selected': 'Начало',
               'page_title': 'Начало',
               'rest_num': rest_num,
               'reviews': reviews,
               }
    return render(request, 'main/index.html', context)


# Страница ЗА НАС
def about(request):
    emploeyes = Employee.objects.all()
    rest_num = len(Restaurant.objects.all())
    reviews = Review.objects.all()
    context = {'menu': menu,
               'selected': 'За нас',
               'page_title': 'За нас',
               'staff': emploeyes,
               'rest_num': rest_num,
               'reviews': reviews,
               }
    return render(request, 'main/about.html', context)


# Страница КОНТАКТИ
def contact(request):
    context = {'menu': menu,
               'selected': 'Контакти',
               'page_title': 'Контакти'
               }
    return render(request, 'main/contact.html', context)


# Страница РЕЗЕРВАЦИИ
def booking(request):
    restaurants = Restaurant.objects.all()
    context = {'menu': menu,
               'selected': 'Резервации',
               'page_title': 'Резервации',
               'restaurants': restaurants,
               }
    return render(request, 'main/list.html', context)


# Страница РЕСТОРАНТ
LUNCH = 1
DINNER = 2


def restaurant(request, pk):
    rest = Restaurant.objects.get(id=pk)
    groups = Group.objects.all()
    rest_menu = []
    for group in groups:
        menu_section = MenuItem.objects.filter(restaurant=pk).filter(section=group.id)
        if len(menu_section)>0:
            menu_page = {
                'name': group.name,
                'items': menu_section,
            }
            rest_menu.append(menu_page)

    form = BookNowForm()
    mode = 'нова'
    if request.method == 'POST':
        form = BookNowForm(request.POST)
        if form.is_valid():
            res_type = DINNER
            if str(form.cleaned_data['ap_hour']) <= '15:00':
                res_type = LUNCH
            rs = Appointment.objects.filter(ap_date=form.cleaned_data['ap_date']).filter(ap_type=res_type).filter(ap_rest=pk)
            print('rs=',rs)
            booked_places = 0
            if len(rs)>0:
                for i in rs:
                    booked_places += rs.ap_places
            print('booked_places=',booked_places)
            if int(rest.places)-booked_places < int(form.cleaned_data['ap_places']):
                mode = 'отказана'
            else:
                mode = 'приета'
                print(form.cleaned_data)
                Appointment.objects.create(
                    ap_date=form.cleaned_data['ap_date'],
                    ap_hour=form.cleaned_data['ap_hour'],
                    ap_type=res_type,
                    ap_rest=rest,
                    ap_places=form.cleaned_data['ap_places'],
                    ap_name=form.cleaned_data['ap_name'],
                    ap_phone=form.cleaned_data['ap_phone'],
                    ap_email=form.cleaned_data['ap_email'],
                    ap_message=form.cleaned_data['msg'],
                )

    context = {'menu': menu,
               'selected': 'Резервации',
               'page_title': 'Резервации',
               'restaurant': rest,
               'rest_menu': rest_menu,
               'show_menu': len(rest_menu) > 0,
               'form': form,
               'mode': mode,
               }
    return render(request, 'main/restaurant.html', context)

