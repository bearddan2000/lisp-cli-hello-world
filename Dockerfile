FROM alpine:edge

WORKDIR /workspace

COPY bin .

RUN apk update \
    && apk add sbcl

ENTRYPOINT ["sbcl", "--script"]

CMD ["main.lisp"]