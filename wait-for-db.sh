#!/bin/sh

echo "⏳ Waiting for database..."
while ! nc -z db 3306; do
  sleep 1
done
echo "✅ Database is ready!"

python manage.py migrate --no-input
exec gunicorn notesapp.wsgi --bind 0.0.0.0:8000
