FROM python:3.8.5

WORKDIR /code
COPY . .
RUN sh entrypoint.sh
RUN pip install -r requirements.txt
RUN flake8 --ignore=E501,F401,F403,F405
RUN chmod ugo+x entrypoint.sh
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
