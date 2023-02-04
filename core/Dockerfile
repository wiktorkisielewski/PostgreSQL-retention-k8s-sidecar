FROM bash:5.2.15

WORKDIR /

RUN mkdir app

RUN apk update
RUN apk add postgresql-client

COPY scripts /app
WORKDIR /app

CMD ["./app.sh"]