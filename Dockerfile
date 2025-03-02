FROM golang:1.24

WORKDIR /app

RUN go mod init ci_go

COPY . .

RUN go build -o math

CMD ["./math"]