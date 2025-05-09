FROM node:18-slim

# Install dependencies for Soketi
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  && rm -rf /var/lib/apt/lists/*

# Install Soketi
RUN curl -fsSL https://github.com/soketi/soketi/releases/download/v1.5.0/soketi-v1.5.0-linux-x64.tar.gz -o soketi.tar.gz \
  && tar -xvzf soketi.tar.gz -C /usr/local/bin/ \
  && rm soketi.tar.gz

# Expose port for WebSocket communication
EXPOSE 6001

# Run Soketi
CMD ["soketi", "start"]
