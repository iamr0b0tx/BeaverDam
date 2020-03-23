@echo off
cls

pip install --upgrade pip
pip install --upgrade -r requirements.txt

python manage.py migrate
python manage.py loaddata annotator/fixtures/initialdata.yaml

echo "create a super user for login"
python manage.py createsuperuser