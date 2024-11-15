# Use a base image (e.g., Python, Node.js, etc., depending on the project)
FROM python:3.9

# Set the working directory in the container
WORKDIR /

# Copy project files to the container
COPY . .

# Install dependencies (e.g., from requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expose a port if the project runs a server
EXPOSE 5000

# Define the command to start the application
CMD ["python", "app.py"]
