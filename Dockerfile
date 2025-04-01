# Utiliser une image de base Python
FROM python:3.13.2

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel l'application va tourner
EXPOSE 8080

# Commande pour lancer l'application
CMD ["python3", "src/app.py"]
