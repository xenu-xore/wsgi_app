from os import path

from jinja2 import Environment
from jinja2 import FileSystemLoader
from sqlalchemy.orm import create_session
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import scoped_session
from werkzeug.local import Local
from werkzeug.local import LocalManager
from werkzeug.routing import Map
from werkzeug.routing import Rule
from werkzeug.wrappers import Response

# import logging
#
# logging.basicConfig(filename='db.log')
# logging.getLogger('sqlalchemy.engine.base.Engine').setLevel(logging.INFO)

# константа для указания приложению дирикторию с шаблонами jinja2
TEMPLATE_PATH = path.join(path.dirname(__file__), "templates")
# константа для указания wsgi дирикторию co статическими данными
STATIC_PATH = path.join(path.dirname(__file__), "static")
# константа для указания wsgi разрешенных протоколов соединения
ALLOWED_SCHEMES = frozenset(["http", "https", "ftp", "ftps"])

# получаем объект класса Local для работы внутри приложения
local = Local()
local_manager = LocalManager([local])
application = local("application")

# получаем объект для последущего создания схемы базы
Base = declarative_base()
url_map = Map([Rule("/static/<file>", endpoint="static", build_only=True)])

# создаем сессии для работы с sqlalchemy
session = scoped_session(
    lambda: create_session(
        application.database_engine, autocommit=False, autoflush=False
    )
)
jinja_env = Environment(loader=FileSystemLoader(TEMPLATE_PATH))


# декоратор для определения URL страницы
def expose(rule, **kw):
    def decorate(f):
        kw["endpoint"] = f.__name__
        url_map.add(Rule(rule, **kw))
        return f

    return decorate


# метод определения url на основание названия выполняемого метода
def url_for(endpoint, _external=False, **values):
    return local.url_adapter.build(endpoint, values, force_external=_external)


jinja_env.globals["url_for"] = url_for


# прослушка шаблонов jinja2
def render_template(template, **context):
    return Response(
        jinja_env.get_template(template).render(**context), mimetype="text/html"
    )
