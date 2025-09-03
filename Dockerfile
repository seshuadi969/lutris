# Use Python as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system dependencies (Lutris needs some)
RUN apt-get update && apt-get install -y \
    python3-gi \
    gir1.2-gtk-3.0 \
    gir1.2-glib-2.0 \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install lutris in editable mode
RUN pip install -e .

# Expose port if needed (Lutris is usually GUI, but just in case)
EXPOSE 5000

# Run Lutris CLI
CMD ["lutris", "--help"]
