from django.shortcuts import render

from django.http import HttpResponse

def index(request):
	contex_dict = {'boldmessage' : 'What is going on'}
	return render(request, 'rango/index.html', context=contex_dict)

def about(request):
	return HttpResponse('Rango says here is the about hello <a href="/rango/">Index</a>')
