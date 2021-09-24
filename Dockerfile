FROM python:3.8 AS builder
COPY req.txt req.txt

RUN pip install --user -r req.txt

FROM python:3.8-slim
WORKDIR /code

COPY . .

ENV PATH=/root/.local:$PATH

CMD ["python3","-u","./hello.py"]