FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python=3.6 python-pip 

RUN pip install flask==1.1.1

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080  
