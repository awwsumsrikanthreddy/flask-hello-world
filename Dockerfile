FROM python:3.10-slim-buster as build
EXPOSE 5000
RUN mkdir /flask-hello-world
RUN . /flask-hello-world
RUN mv hello.py app.py && pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask", "run", "-h", "0.0.0.0"]
