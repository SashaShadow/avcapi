web: gunicorn api.wsgi
release: py manage.py makemigrations --noinput
release: py manage.py collectstatic --noinput
release: py manage.py migrate --noinput