# Use Python as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements first (optional, if exists)
COPY requirements.txt /app/

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Copy rest of the app
COPY . /app

# Expose port (if your app runs on Flask/Django etc.)
EXPOSE 5000

# Run the app (make sure the filename is correct!)
CMD ["python", "main.py"]

