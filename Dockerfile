# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file into the container
COPY req.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r req.txt 

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the application will run on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
