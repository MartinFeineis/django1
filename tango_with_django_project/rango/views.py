from django.shortcuts import render

from django.http import HttpResponse

def index(request):
	return HttpResponse("Rango says hello there <a href='/rango/about/'>rango about</a>")

def about(request):
	return HttpResponse('Rango says here is the about hello <a href="/rango/">Index</a>')
