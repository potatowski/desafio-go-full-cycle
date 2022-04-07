FROM golang:1.16.0-alpine3.12 as build
COPY ./desafio.go /go/desafio.go
RUN go build desafio.go

FROM scratch
COPY --from=build /go/desafio /app/desafio
CMD ["/app/desafio"]