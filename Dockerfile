FROM python:3.7

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Creating working directory
RUN mkdir /app

# Copying the files to the work directory
COPY . /app

RUN pip install pipenv

# installing dependancies
RUN pipenv install

# Set work directory.
WORKDIR /app 

# Exposing the port for the app to use
EXPOSE 5000

# Command to run the app
ENTRYPOINT [ "FLASK_APP=__init__.py", "flask", "run" ]


