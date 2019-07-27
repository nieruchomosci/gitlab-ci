.DEFAULT: all

.PHONY: all golang gitlab-runner php docker

golang:
	docker build -t nninja/gitlab-golang ./golang

php:
	docker build -t nninja/gitlab-php ./php

docker:
	docker build -t nninja/gitlab-docker ./docker

gitlab-runner:
	docker build -t nninja/gitlab-runner ./gitlab-runner

.PHONY: all
all: golang gitlab-runner php docker
