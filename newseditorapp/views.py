from django.shortcuts import render,redirect
from django.http import HttpResponse
from newsapp.models import NewsType
from .forms import NewsTypeForm


# To show all news list
def news_category(request):
    news_list = NewsType.objects.all()
    return render(request,'show.html',{"news_list": news_list})


# to create a news record
def news(request):
    if request.method =='POST':
        form=NewsTypeForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/newseditor/newscategory')
            except:
                pass
    else:
        form=NewsTypeForm()
        news_list = NewsType.objects.all()
    return render(request,'index.html',{"form":form})


#To Edit the NewsType form
def NewsTypeEdit(request,slno):
    news=NewsType.objects.get(slno=slno)
    return render(request,"edit.html",{"news":news})



#To Update the NewsType
def NewsTypeUpdate(request,slno):
    print(str(slno))
    news=NewsType.objects.get(slno=slno)
    print(news)
    form=NewsTypeForm(request.POST,instance=news)
    print(form)
    if form.is_valid():
        try:
            form.save()
            news=NewsType.objects.all()
            return redirect('/newseditor/newscategory')
        except:
            pass
    return render(request,'edit.html',{"news":news})
