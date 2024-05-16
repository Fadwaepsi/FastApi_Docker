# Je choisis une image "template" de pyehon
FROM python:3.9

# Je choisis un répertoire de travail
WORKDIR /code

# Je copie les requirements de mon projet vers mon espace 
# de travail
COPY ./requirements.txt /code/requirements.txt

# Je lance l'installation des bibliotheque sur mon conteneur
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Je copie le reste de mon projet situé dans app
COPY ./app /code/app

# Je spécifie la commande par défaut pour lancer le conteneur
CMD ["fastapi", "run", "app/main.py", "--port","80"]
