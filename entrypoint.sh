#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn RealtorSite.wsgi:application --bind 0.0.0.0:8001