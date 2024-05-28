#!/bin/bash
set -e
echo "Collecting static assets..."
python manage.py collectstatic --noinput
echo "Migrating the database..."
python manage.py migrate
echo "Starting the application..."

gunicorn app.wsgi
