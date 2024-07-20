FROM python:3.13.0b3-slim
MAINTAINER Duo Labs https://duo.com/labs

RUN mkdir /app
COPY flask_demo /app/flask_demo/
COPY webauthn /app/webauthn/
RUN pip install -r /app/flask_demo/requirements.txt
RUN python /app/flask_demo/create_db.py

CMD ["python", "/app/flask_demo/app.py"]
