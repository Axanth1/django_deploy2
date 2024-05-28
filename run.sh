#!/bin/bash
set -e
echo "Collecting static assets..."
python manage.py collectstatic --noinput
echo "Starting the application..."
gunicorn app.wsgi
