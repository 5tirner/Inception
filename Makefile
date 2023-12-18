UP		= docker-compose up -d

DOWN	= docker-compose down

WORKDIR	= cd srcs

up :
	$(WORKDIR) && $(UP)

down :
	$(WORKDIR) && $(DOWN)

re : down up