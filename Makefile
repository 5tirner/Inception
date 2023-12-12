UP	= docker-compose up -d

BUILD	= docker-compose up --build

DOWN	= docker-compose down

up:
	cd srcs && $(UP)

down:
	cd srcs && $(DOWN)
