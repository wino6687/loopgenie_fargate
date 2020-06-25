FROM tiangolo/uwsgi-nginx-flask:python3.8

WORKDIR /project
ADD . /project

RUN pip install flask
RUN pip install geojson
RUN pip install psycopg2
RUN pip install shapely
RUN pip install geocoder
RUN pip install ortools
RUN pip install requests
RUN pip install numpy
RUN pip install networkx
RUN pip install flask-cors

# Add demo app
COPY ./app /app


CMD ["python", "app/main.py"]