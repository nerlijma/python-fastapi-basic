pip install --upgrade pip
python -m pip install --upgrade pip (windows)

Heroku
1. crear archivo Procfile en la raiz
web: gunicorn -w 4 -k uvicorn.workers.UvicornWorker app.main:app

2. Freeze de los requirements

pip freeze > requirements.txt

3. Crear proyecto en heroku

4. Conectar github con heroku con automatic deploy
Settings / App connected to GitHub
Settings / Automatic deploys

5. Ver logs heroku

heroku logs --app python-fastapi-basic

NOTA: El proyecto debe tener la estructura
app
  /main
Procfile (al mismo nivel que app)

el que lo llama, en este caso Profile debe estar a la misma altura que app para que reconozca el package (folder)

*** DOCKER COMPOSE
docker-compose up --build app

http://localhost:8000/demo
