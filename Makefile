DOCKER_ID_USER=ivoputzer
NAME=mosh-server
all: clean build test
clean:
	docker ps -aqf name=$(NAME) | xargs docker rm
	docker images -q $(NAME) | xargs docker rmi
build:
	docker build --rm -t $(NAME) .
test:
	docker run --rm $(NAME) --version | grep -qa "mosh-server"
pull:
	docker pull $(DOCKER_ID_USER)/$(NAME):latest
push: all
	docker tag $(NAME) $(DOCKER_ID_USER)/$(NAME)
	docker push $(DOCKER_ID_USER)/$(NAME)
	docker rmi $(DOCKER_ID_USER)/$(NAME)
