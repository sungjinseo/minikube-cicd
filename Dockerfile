FROM golang:1.20.1-alpine3.17
WORKDIR /target
COPY . /target/
RUN go build -o server main.go
ENTRYPOINT ["/target/server"]
