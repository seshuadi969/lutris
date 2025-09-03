# Use Python as base (change version if needed)
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files into container
COPY . /app

# Install dependencies if requirements.txt exists
RUN pip install --no-cache-dir -r requirements.txt || true

# Expose port (if your app runs on Flask/Django etc.)
EXPOSE 5000

# Run the app (change filename to your main python script)
CMD ["python", "app.py"]

