# Use Python 3.9 slim image as base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Create directories for input data and results
RUN mkdir -p data results

# Expose port for web interface (if needed)
EXPOSE 8000

# Default command to run the application
CMD ["python", "main.py", "config.yaml"]