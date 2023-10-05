# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the required packages
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY app app

# Expose port 5000
EXPOSE 5000

# Set the environment variable for Flask
ENV FLASK_APP app/app.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
