FROM golang:1.18.3-alpine3.16 AS builder

RUN apk update

WORKDIR /app/hellofullcycle

COPY . .

RUN go mod init example.com/hellofullcycle

RUN go build -o /app/hellofullcycle

FROM scratch

COPY --from=builder /app/hellofullcycle /app/hellofullcycle

CMD ["/app/hellofullcycle/hellofullcycle"]
