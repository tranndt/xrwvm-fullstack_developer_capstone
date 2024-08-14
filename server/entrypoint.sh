#!/bin/sh

# Debugging output
echo "Current working directory: $(pwd)"
echo "Listing files in the current directory:"
ls -l
echo "Environment variables:"
env

# Optionally remove the database (use with caution)
rm -f db.sqlite3

# Make migrations and migrate the database.
echo "Making migrations and migrating the database."
python manage.py makemigrations djangoapp --noinput
python manage.py migrate --noinput
python manage.py collectstatic --noinput

# Debugging output to confirm database creation
echo "Listing files after migrations:"
ls -l

exec "$@"
