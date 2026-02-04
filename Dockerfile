FROM python:slim

ENV FETCH_AMOUNT=20

RUN apt-get update && apt-get install -y \
    iputils-ping \
    nano \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE  8501
