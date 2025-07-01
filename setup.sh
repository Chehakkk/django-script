#!/bin/bash

set -e  # Exit if any command fails

PROJECT_NAME="nst_project"
APP_NAME="transfer"
CONDA_ENV="env"
PORT=8000

 #--activating env--
echo " Activating conda env: $CONDA_ENV"
eval "$(conda shell.bash hook)"
conda activate "$CONDA_ENV"

#--intializing django project--
echo " Creating Django project in subfolder: $PROJECT_NAME"
django-admin startproject $PROJECT_NAME

cd $PROJECT_NAME
#--creating app under project dir --
echo " Creating Django app: $APP_NAME inside project"
python manage.py startapp $APP_NAME

#--configuration--
echo " Adding $APP_NAME to INSTALLED_APPS"
sed -i "/INSTALLED_APPS = \[/a \    '$APP_NAME'," $PROJECT_NAME/settings.py

#--making migrations for changes-
echo " Running initial migrations"
python manage.py migrate

#--dependency installation--
echo " Saving requirements"
pip freeze > requirements.txt

#--run server--
echo " Starting server at http://0.0.0.0:$PORT/"
python manage.py runserver 0.0.0.0:$PORT

