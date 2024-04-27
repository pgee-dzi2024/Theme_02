from django.db import models


# Служител
class Employee(models.Model):
    photo = models.ImageField('Снимка', upload_to='employees', blank=True)
    name = models.CharField('Име и фамилия', max_length=150, default='', blank=True)
    position = models.CharField('Длъжност', max_length=50, default='', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Служител'
        verbose_name_plural = 'Служители'


# Ресторант
class Restaurant(models.Model):
    photo1 = models.ImageField('Снимка горе ляво', upload_to='restaurants', blank=True)
    photo2 = models.ImageField('Снимка горе дясно', upload_to='restaurants', blank=True)
    photo3 = models.ImageField('Снимка долу ляво', upload_to='restaurants', blank=True)
    photo4 = models.ImageField('Снимка долу дясно', upload_to='restaurants', blank=True)
    name = models.CharField('Име (в т.ч. ресторант, механа и т.н.', max_length=150, default='', blank=True)
    text1 = models.TextField('Текст - първи абзац', default='', blank=True)
    text2 = models.TextField('Текст - втори абзац', default='', blank=True)
    places = models.IntegerField('Брой предлагани места', default=0)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Ресторант'
        verbose_name_plural = 'Ресторанти'


# Отзиви от клиенти
class Review(models.Model):
    txt = models.TextField('Текст', default='', blank=True, help_text='Текст на отзива')
    name = models.CharField('Име', max_length=50, default='', blank=True,
                            help_text='Име на автора на отзива')
    pos = models.CharField('Позиция', max_length=50, default='', blank=True,
                            help_text='длъжност и/или населено място и/или образование/професия')
    photo = models.ImageField('Снимка', upload_to='clients', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Отзив'
        verbose_name_plural = 'Отзиви'


# Групи в менюто
class Group(models.Model):
    name = models.CharField('Наименование', max_length=50, default='', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Раздел в менюто'
        verbose_name_plural = 'Раздели в менюто'


# Меню
class MenuItem(models.Model):
    name = models.CharField('Наименование', max_length=100, default='', blank=True)
    description = models.TextField('Описание', default='', blank=True)
    price = models.DecimalField('Цена', max_digits=6, decimal_places=2, default=0)
    photo = models.ImageField('Снимка', upload_to='menu', blank=True)
    section = models.ForeignKey(Group, verbose_name='Раздел/група', on_delete=models.CASCADE)
    restaurant = models.ForeignKey(Restaurant, verbose_name='Ресторант', on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Позиция в менюто'
        verbose_name_plural = 'Позиции в менюто'


# Час за резервация
class BookHour(models.Model):
    hour = models.CharField('Час', max_length=5, help_text='Начален час')

    def __str__(self):
        return self.hour

    class Meta:
        verbose_name = 'Начален час'
        verbose_name_plural = 'Начални часове'


# Резервации
class Appointment(models.Model):
    LUNCH = 1
    DINNER = 2
    RESERVATION_TYPE = [
        (LUNCH, 'обяд'),
        (DINNER, 'вечеря'),
    ]

    ap_date = models.DateField('Дата', auto_now=True)
    ap_hour = models.ForeignKey(BookHour,verbose_name='Час', on_delete=models.CASCADE)
    ap_rest = models.ForeignKey(Restaurant,verbose_name='Ресторант', default=2, on_delete=models.CASCADE)
    ap_type = models.PositiveSmallIntegerField(verbose_name='Тип', choices=RESERVATION_TYPE, default=DINNER, help_text='тип на резервацията')
    ap_places = models.IntegerField('Брой хора', default=0, help_text='брой резержирани места')
    ap_name = models.CharField('Име', max_length=60)
    ap_phone = models.CharField('Телефон', max_length=14, default='')
    ap_email = models.CharField('e-mail', max_length=50, default='')
    ap_new = models.BooleanField('Нова резервация', default=True)
    ap_message = models.TextField('Допълнителни изисквания', default='', blank=True)

    def __str__(self):
        return self.ap_name

    class Meta:
        verbose_name = 'Резервация'
        verbose_name_plural = 'Резервации'
