

all: up

up :
	docker-compose -f ./srcs/docker-compose.yml up

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

down:
	docker-compose -f ./srcs/docker-compose.yml down

start:
	docker-compose -f ./srcs/docker-compose.yml start

ps:
	docker ps

build:
	docker-compose -f ./srcs/docker-compose.yml up --build

fclean:
	rm -rf  /home/aaghbal/data/* /home/aaghbal/db/*


