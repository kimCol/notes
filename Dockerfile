FROM python:3.7

# Set environment variables
ENV PYTHONUNBUFFERED 1


RUN mkdir /app

COPY . /app

RUN pipenv install

# Set work directory.
WORKDIR /app 

EXPOSE 5000

ENTRYPOINT [ "FLASK_APP=__init__.py", "flask", "run" ]





