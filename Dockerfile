# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# COPY requirements to /app dir
COPY . .
COPY geckodriver /usr/local/bin/
# Install any needed packages specified in base.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
#RUN pip install -r requirements.txt
