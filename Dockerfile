FROM golang:1.12.0-alpine3.9
RUN mkdir /scraper
ADD . /scraper
WORKDIR /scraper
RUN go build -o main .
CMD ["/scraper/main"]