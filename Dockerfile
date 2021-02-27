FROM python:3.8.5

WORKDIR /code
COPY . .
RUN pip install -r requirements.txt
RUN chmod ugo+x entrypoint.sh
CMD sh entrypoint.sh