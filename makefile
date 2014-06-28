##
#
#
##

NAME    = andy/wordpress
VERSION = latest

.PHONY: build release

default: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

release:
	docker tag $(VERSION) $(NAME)
	docker push $(NAME)
