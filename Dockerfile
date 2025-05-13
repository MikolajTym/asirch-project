# Użyj oficjalnego obrazu Pythona jako obrazu bazowego
FROM python:3.12.10-slim-bullseye

# Ustaw katalog roboczy wewnątrz kontenera
WORKDIR /app

# Skopiuj całość plików
COPY . .

# Zainstaluj zależności z requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Wystaw port, na którym działa aplikacja Flask
EXPOSE 5000

# Zdefiniuj polecenie do uruchomienia aplikacji Flask
CMD ["python", "main.py"]