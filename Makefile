.PHONY : build
build:
	go build -o bin/server .

.PHONY : docker-build
docker-build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/server .

.PHONY: run
run:
	go run .

.PHONY: test
test:
	go test ./... -v

.PHONY: clean
clean:
	rm bin/server
