# Select official python 3 runtime
FROM python:3.9

# Change work directory to it
WORKDIR /app

# Copy current directory into the created directory
COPY . /app

# Install all dependencies
RUN pip install --trusted-host pypi.python.org Flask

# Start the application
CMD ["python", "main.py"]
