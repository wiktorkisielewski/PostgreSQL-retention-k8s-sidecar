FROM python:3.8

WORKDIR /

RUN apt update
RUN pip install -r requirements.txt

CMD ["python", "-u", "app.py"]