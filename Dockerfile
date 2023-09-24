# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5060

# Define environment variable
ENV OPENAI_API_KEY XXX
ENV AWS_ACCESS_KEY XXX
ENV AWS_SECRET_KEY XXX

# Run python script.py when the container launches
CMD ["python3", "rotarygpt.py"]