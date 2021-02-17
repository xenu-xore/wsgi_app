from werkzeug.utils import redirect
from werkzeug.utils import secure_filename

import simplejson as json
import os

from app.models import Users, Region, City
from app.utils import expose
from app.utils import render_template
from app.utils import session
from app.utils import url_for
from app.utils import Response
from manage import make_app
from .func import replace_id_loc1, replace_id_loc2

import sqlite3
import pandas as pd

# #
basedir1 = os.path.abspath(os.path.dirname('app/static/upload/'))
basedir2 = os.path.abspath(os.path.dirname('app/static/download/'))


@expose("/")
def home(request):
    url = url_for("home")
    return render_template("home.html", url=url)


# импортирование xlsx
@expose("/upload/")
def user_form(request):
    if request.method == 'POST':
        # объект SQLAlchemy для связи с существующей db
        engine = make_app().database_engine
        basedir = os.path.abspath(os.path.dirname('app'))

        # получаем обрабатываем загруженый фаил
        file = request.files['file']
        filename = secure_filename(file.filename)
        file.save(os.path.join(basedir1, filename))
        replace_id_loc1(basedir1, filename, engine)

        return redirect(url_for("table"))
    return redirect(url_for("table"))


# главное представление приложения
@expose("/table/")
def table(request):
    url = url_for("table")

    # подключаем необходимые таблицы для списков в jinja2
    regions = Region.query.all()
    queries = Users.query.all()

    basedir = os.path.abspath(os.path.dirname('app'))

    # инициируем и преобразуем для чтетия выгрузку таблицы Users
    engine = make_app().database_engine
    db = sqlite3.connect('data.db', uri=True)
    c = db.cursor()
    script = """
            SELECT * FROM Users
            """
    c.execute(script)
    columns = [desc[0] for desc in c.description]
    data = c.fetchall()
    df = pd.DataFrame(list(data), columns=columns)
    writer = pd.ExcelWriter(basedir2 + r'\database.xlsx')
    df.to_excel(writer, sheet_name='0', index=False)
    writer.save()
    replace_id_loc2(basedir2, r'\database.xlsx', engine)

    # получаем данные из формы далее записывает данные в таблицу users
    if request.method == "POST":
        # запись в db полученой информации из формы
        try:
            firstName = request.form['firstName']
            middleName = request.form['middleName']
            lastName = request.form['lastName']
            phone = request.form['phone']
            email = request.form['email']
            city = request.form['city']
            rel_city = City.query.filter(City.name == city).first()
            try:
                done_db = Users(firstName=firstName,
                                middleName=middleName,
                                lastName=lastName,
                                phone=phone,
                                email=email,
                                region_id=rel_city.region_id,
                                city_id=rel_city.id,
                                )

                session.add(done_db)
                session.commit()
                return redirect(url_for("table"))
            except Exception as e:
                # обработаем исключение если город и регин не заполнен выведим пустую ячейку
                try:
                    error = e.args[0].split()
                    error_str = error[5].replace("'", "")
                    if error_str == 'region_id' or error_str == 'city_id':
                        done_db = Users(firstName=firstName,
                                        middleName=middleName,
                                        lastName=lastName,
                                        phone=phone,
                                        email=email,
                                        region_id=None,
                                        city_id=None,
                                        )
                        session.add(done_db)
                        session.commit()
                finally:
                    return redirect(url_for("table"))
        except Exception as e:
            try:
                return e
            finally:
                # сереализуем post запрос в json для ajax
                if request.form['region']:
                    region = request.form['region']
                    records = [z.to_json() for z in Region.query.filter_by(name_region=region)]
                    cont = json.dumps(records[0], sort_keys=True)
                    return Response(cont, content_type="application/json")
    return render_template("table.html", url=url, queries=queries, regions=regions)


# шаблон для 404 ответа
def not_found(request):
    return render_template("not_found.html")
