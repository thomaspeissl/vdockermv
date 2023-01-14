FROM docker.io/thevlang/vlang:alpine-dev

WORKDIR /app

ADD . .

RUN v .

CMD ["./app"]
