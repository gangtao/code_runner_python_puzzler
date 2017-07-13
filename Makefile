BIN_NAME ?= code_runner_python_puzzler
IMAGE_NAME ?= ${BIN_NAME}:latest
DKR_ECR ?= hub.docker.com
VERSION ?= 0.1
DOCKER_ID_USER ?= naughtytao

docker: Dockerfile
	docker build --no-cache -t $(IMAGE_NAME) .

push:
	docker tag $(BIN_NAME) ${DOCKER_ID_USER}/$(BIN_NAME)
	docker push ${DOCKER_ID_USER}/$(BIN_NAME)