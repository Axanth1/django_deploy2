#!/bin/bash
echo "Collecting static assets..."
python manage.py collectstatic
echo "Starting the application..."
gunicorn app.wsgi
