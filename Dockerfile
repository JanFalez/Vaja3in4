# Stage 1: Python 3.8
FROM python:3.8 AS py38

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python", "main.py"]

# Stage 2: Python 3.9
FROM python:3.9 AS py39

WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
