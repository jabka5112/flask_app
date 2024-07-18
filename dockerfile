# Use the official Python image from the Docker Hub
FROM python:3.12
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Define environment variable
ENV FLASK_APP=flask_app
ENV FLASK_ENV=development
# Initialize the database
RUN flask db init && flask db migrate && flask db upgrade
# Make port 5000 available to the world outside this container
EXPOSE 5000
# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]
