.DEFAULT: all

.PHONY: all golang gitlab-runner

golang:
	docker build -t nieruchomosci/golang ./golang

gitlab-runner:
	docker build -t nieruchomosci/gitlab-runner ./gitlab-runner

.PHONY: all
all: golang gitlab-runner
