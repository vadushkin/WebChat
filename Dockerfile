FROM python:3.10
ENV PYTHONUNBUFFERED 1
ENV DJANGO_ENV dev
ENV DOCKER_CONTAINER 1

COPY ./requirements.txt /code/requirements.txt
RUN pip install -r /code/requirements.txt

COPY . /code/
COPY c
WORKDIR /code/

EXPOSE 8000
EXPOSE 5555