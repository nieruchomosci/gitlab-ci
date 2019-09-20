.DEFAULT: all

.PHONY: all golang gitlab-runner php docker

golang:
	docker build -t nninja/gitlab-golang ./golang
	docker push nninja/gitlab-golang

php:
	docker build -t nninja/gitlab-php ./php
	docker push nninja/gitlab-php

docker:
	docker build -t nninja/gitlab-docker ./docker
	docker push nninja/gitlab-docker

gitlab-runner:
	docker build -t nninja/gitlab-runner ./gitlab-runner
	docker push nninja/gitlab-runner

.PHONY: all
all: golang gitlab-runner php docker
