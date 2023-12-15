UP	= docker-compose up -d

BUILD	= docker-compose build

DOWN	= docker-compose down

SRCS	= cd srcs

up :
	$(SRCS) && $(UP)

build :
	$(SRCS) && $(UP)

down :
	$(SRCS) && $(DOWN)
