from django import forms
from newsapp.models import NewsType
from django.utils import timezone



class NewsTypeForm(forms.ModelForm):
    news_type = forms.CharField(label="Category",required = True,widget= forms.TextInput(attrs={'placeholder':'Enter Text Input','pattern':'[A-Za-z ]+'}))
    new_type_display = forms.CharField(label="Category Display",required = True,widget= forms.TextInput(attrs={'placeholder':'Enter Type of Display','pattern':'[A-Za-z ]+'}))
    record_start_date = forms.DateField(label='Category Start Date',required = True,widget= forms.DateInput(attrs={'type': 'date'}))
    record_end_date = forms.DateField(label="Category End Date",required = False,widget= forms.DateInput(attrs={'type': 'date'}))


    class Meta:
        model = NewsType
        fields = "__all__"


    def clean(self):
        super(NewsTypeForm, self).clean()
        news_type= self.cleaned_data.get('news_type')
        record_start_date = self.cleaned_data.get('record_start_date')
        record_end_date = self.cleaned_data.get('record_end_date')

        # conditions to be met for the news_type length,record start date and end date
        if len(news_type) < 3:
            self._errors['news_type'] = self.error_class(['Minimum 3 characters required'])

        if NewsType.objects.filter(new_type_display=self.cleaned_data['new_type_display']).exists():
            self._errors['new_type_display'] = self.error_class(['This category already exists in DB'])

        if record_start_date < timezone.now().date():
            self._errors['record_start_date'] = self.error_class(['Date should be greter than or equal to currentdate'])

        if record_end_date != None:
            if record_end_date <= record_start_date:
                self._errors['record_end_date'] = self.error_class(['Date should be greter than or equal to Category start date'])
        # return any errors if found
        return self.cleaned_data
