FROM golang:latest

WORKDIR /go/src/github.com/mojibakeo/go-https-portal-sample

COPY . .

RUN go mod download
RUN go install github.com/mojibakeo/go-https-portal-sample

ENTRYPOINT ["go-https-portal-sample"]
