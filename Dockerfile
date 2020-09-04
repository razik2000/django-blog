FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /usr/src/django_project
COPY ./req.txt /usr/src/req.txt
RUN pip install -r /usr/src/req.txt
COPY . /usr/src/django_project

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]