UP	= docker-compose up -d

DOWN	= docker-compose down

up:
	cd srcs && $(UP)

down:
	cd srcs && $(DOWN)
