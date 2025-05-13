# asirch-project

Aby uruchomić projekt należy zbudować taga: 
```bash
docker build -t moja-aplikacja-flask .
```

Aby uruchomić dockera należy:
```bash
docker run -p 80:5000 -e NAME="Twoje Imię" moja-aplikacja-flask
```