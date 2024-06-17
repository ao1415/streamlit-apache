FROM python:3.12.4-slim

RUN apt-get update
RUN pip install --upgrade pip
RUN apt install -y apache2

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY entrypoint.sh .
RUN chmod +x ./entrypoint.sh
COPY main.py .

CMD ["./entrypoint.sh"]
