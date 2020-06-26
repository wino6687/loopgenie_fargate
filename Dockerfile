FROM tiangolo/uwsgi-nginx-flask:python3.8

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt

COPY ./app /app

CMD ["python", "app/app/main.py"]