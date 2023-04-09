FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt gunicorn

COPY . .

EXPOSE 80

CMD ["gunicorn", "--bind", "0.0.0.0:80", "main:app"]
