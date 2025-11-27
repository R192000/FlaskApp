# Étape 1 : utiliser une image Python officielle
FROM python:3.11-slim

# Étape 2 : définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : copier le fichier des dépendances et les installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4 : copier tout le code de l'application dans le conteneur
COPY . .

# Étape 5 : exposer le port sur lequel Flask écoute
EXPOSE 5000

# Étape 6 : exécuter l'application Flask
CMD ["python", "app.py"]
