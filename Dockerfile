FROM alpine:3.8

RUN apk add --update --no-cache \
    python \
    py-pip && \
    pip install --upgrade pip && \
    pip install virtualenv

RUN virtualenv /env && /env/bin/pip install awscli==1.16.9

ENTRYPOINT ["/env/bin/aws"]
CMD ["--version"]
