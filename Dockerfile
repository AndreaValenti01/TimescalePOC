FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y libpq-dev build-essential

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT ["python", "script.py"]
