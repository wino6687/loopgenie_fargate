FROM tiangolo/uwsgi-nginx-flask:python3.8

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt

RUN echo "uwsgi_read_timeout 300s;" > /etc/nginx/conf.d/custom_timeout.conf

COPY ./app /app