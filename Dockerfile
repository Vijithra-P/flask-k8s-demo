# Base image (Python already installed)
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy files into container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
