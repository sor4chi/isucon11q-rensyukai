all: build restart

BINARY_NAME=isucondition

.PHONY: build
build:
	@echo "Building..."
	@go build -o $(BINARY_NAME) *.go

.PHONY: restart
restart:
	@echo "Restarting..."
	@sudo systemctl restart isucondition.go.service
