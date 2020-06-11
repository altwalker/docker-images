FROM python:3.8-buster

RUN pip install pipenv

RUN mkdir /code
WORKDIR /code

RUN git clone https://gitlab.com/altom/altwalker/altwalker-demos/django-auth.git .
RUN pipenv lock --requirements > requirements.txt && \
  pip install -r requirements.txt && \
  python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8000