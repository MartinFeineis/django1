from django.shortcuts import render
from rango.models import Category,Page
from django.http import HttpResponse

def show_category(request, category_name_slug):
	context_dict = {}
	try:
		category = Category.objects.get(slug=category_name_slug)
		pages = Page.objects.filter(category=category)
		context_dict['pages'] = pages
		context_dict['category'] = category
	except Category.DoesNotExist:
		context_dict['pages'] = None
		context_dict['category'] = None
	return render(request, 'rango/category.html', context_dict)

def index(request):
	message = {'boldmessage' : 'What is going on'}
	page_list = Page.objects.order_by('-views')[:5]
	page_dict = {'pages': page_list}
	category_list = Category.objects.order_by('-likes')[:5]
	context_dict = {'categories' : category_list}
	context_dict.update(message)
	context_dict.update(page_dict)
	return render(request, 'rango/index.html', context=context_dict)

def about(request):
	return HttpResponse('Rango says here is the about hello <a href="/rango/">Index</a>')
