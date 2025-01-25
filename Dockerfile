FROM python:3.11-slim-buster

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . /app

RUN apt-get update && apt-get install -y gcc libasound-dev portaudio19-dev

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Command to first run main.py
CMD python3 main.py