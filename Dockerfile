FROM golang:1.18-alpine as builder

WORKDIR /src
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/server .

FROM scratch as package
WORKDIR /bin
COPY --from=builder /src/bin/server .
ENTRYPOINT [ "./server" ]