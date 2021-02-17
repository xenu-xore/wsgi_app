import click
from werkzeug.serving import run_simple
import sqlite3
import os


# инициируем связь по созданному uri
def make_app():
    from app.application import Shorty
    return Shorty(f"sqlite:///data.db")


# присоединяем подкоманды
@click.group()
def cli():
    pass


# команда и метод  для штатной инициализации schema db
@cli.command()
def dbsqlachemy():
    make_app().init_database()
    print("Done db")


# команда и метод для инициализации db и sql скрипта со схемой и данными
@cli.command()
def dbsqlscript():
    try:
        if not os.path.isfile('data.db'):
            with open('data.db', "a"), open('SQL_script.sql', 'r') as script:
                conn = sqlite3.connect('data.db')
                c = conn.cursor()
                s = ""
                for line in script:
                    s += line
                c.executescript(s)
                print("Done db")
        else:
            print("База уже создана")
    except Exception as e:
        print(f"Ошибка {e}")


# команда дружелюбного запуска сервера wsgi
@cli.command()
@click.option("-h", "--hostname", type=str, default="localhost", help="localhost")
@click.option("-p", "--port", type=int, default=5000, help="5000")
@click.option("--no-reloader", is_flag=True, default=False)
@click.option("--debugger", is_flag=True)
@click.option("--no-evalex", is_flag=True, default=False)
@click.option("--threaded", is_flag=True)
@click.option("--processes", type=int, default=1, help="1")
def runserver(hostname, port, no_reloader, debugger, no_evalex, threaded, processes):
    """Start a new development server."""
    app = make_app()
    reloader = not no_reloader
    evalex = not no_evalex
    run_simple(
        hostname,
        port,
        app,
        use_reloader=reloader,
        use_debugger=debugger,
        use_evalex=evalex,
        threaded=threaded,
        processes=processes,
    )


if __name__ == "__main__":
    cli()
