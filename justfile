build: 
  @go build -o bin/main cmd/main.go

run: build
  @go run bin/main

test:
  go test ./... -v 
