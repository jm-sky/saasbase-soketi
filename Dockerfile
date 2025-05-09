FROM node:18-slim

# Instalacja minimalnych zależności systemowych
RUN apt-get update && apt-get install -y dumb-init && rm -rf /var/lib/apt/lists/*

# Globalna instalacja soketi
RUN npm install -g soketi

# Ustaw port domyślny
EXPOSE 6001

# Domyślne uruchomienie
CMD ["dumb-init", "soketi", "start"]
