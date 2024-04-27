from django import forms
from .models import *


class BookNowForm(forms.Form):
    ap_name = forms.CharField(max_length=100, label='Вашето име',
                              widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': "Вашето име"}))

    ap_email = forms.CharField(max_length=50, label='E-mail адрес', required=False,
                               widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'email',
                                                             'placeholder': "E-mail адрес"}))

    ap_phone = forms.CharField(max_length=14, label='Телефон', required=False,
                               widget=forms.TextInput(
                                   attrs={'class': 'form-control', 'placeholder': "Телефон за връзка"}))

    ap_date = forms.DateField(label='Дата: ', widget=forms.DateInput(attrs={'type': 'date', 'class': 'form-control'}))

    ap_hour = forms.ModelChoiceField(queryset=BookHour.objects.all(), label='Час: ', empty_label='Не е посочен',
                                     widget=forms.Select(attrs={'class': 'form-control'}))

    ap_places = forms.IntegerField(label='Брой места',
                                   widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': "Брой хора"}))

    msg = forms.CharField(label='Допълнителни изисквания', required=False,
                              widget=forms.Textarea(attrs={'class': 'form-control',
                                                           'placeholder': "Допълнителни изисквания",
                                                           'style': 'height: 100px'}))
