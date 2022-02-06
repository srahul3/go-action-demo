FROM golang:1.17-alpine
RUN mkdir /app
ADD . /app
RUN go clean --modcache
RUN go build -o main .
CMD ["/app/main"]