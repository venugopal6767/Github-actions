FROM golang:1.21
WORKDIR /app
COPY . .
RUN go build -o app .
EXPOSE 9090
CMD ["./app"]
