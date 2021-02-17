# Приложение на wsgi
Приложение для ТЗ

## Start
``` 
pip install -r ./requirements.txt
```

## Создание базы данных 
1 вариант создает сразу заполняет
2 вариант просто создает

``` 
python manage.py dbsqlscript
или 
python manage.py dbsqlachemy
```

## Запуск сервера
```
python manage.py runserver
```