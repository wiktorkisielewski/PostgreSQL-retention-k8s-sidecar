FROM python:3.8

WORKDIR /

COPY requirements.txt /
COPY app.py /

RUN pip install -r requirements.txt

CMD ["python", "-u", "app.py"]