FROM bash:5.2.15

WORKDIR /

RUN apk update
RUN apk add postgresql-client

COPY app.sh /

CMD ["./app.sh"]