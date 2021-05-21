FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask==0.10.1

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080  