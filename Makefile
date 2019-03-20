.DEFAULT: all

.PHONY: all golang gitlab-runner

golang:
	docker build -t nninja/golang ./golang

gitlab-runner:
	docker build -t nninja/gitlab-runner ./gitlab-runner

.PHONY: all
all: golang gitlab-runner
