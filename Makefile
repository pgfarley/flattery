.DEFAULT_GOAL := all

.PHONY: docker
docker:
	docker build -t flattery .

.PHONY: test
test:
	docker run -it -v $(PWD):/flattery flattery

.PHONY: all
all: docker test

