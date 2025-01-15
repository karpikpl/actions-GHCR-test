FROM alpine:latest

ENV APP=ui
WORKDIR /app
COPY package.json package.json

CMD ["sh", "-c","echo Hello from the UI container! $(cat package.json | grep version)"]