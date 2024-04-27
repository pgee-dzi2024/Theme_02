from django.shortcuts import render


menu = [{'title': 'Начало', 'url_name': 'home'},
        {'title': 'За нас', 'url_name': 'about'},
        {'title': 'Резервации', 'url_name': 'book_now'},
        {'title': 'Контакти', 'url_name': 'contact'},
        ]


# Начална страница
def index(request):
    context = {'menu': menu,
               'selected': 'Начало',
               'page_title': 'Начало'
               }
    return render(request, 'main/index.html', context)


# Страница ЗА НАС
def about(request):
    context = {'menu': menu,
               'selected': 'За нас',
               'page_title': 'За нас'
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
    context = {'menu': menu,
               'selected': 'Резервации',
               'page_title': 'Резервации'
               }
    return render(request, 'main/list.html', context)


# Страница РЕСТОРАНТ
def restaurant(request):
    context = {'menu': menu,
               'selected': 'Резервации',
               'page_title': 'Резервации'
               }
    return render(request, 'main/restaurant.html', context)

