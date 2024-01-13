UP		= docker-compose up -d

STOP	= docker-compose stop

DOWN	= docker-compose down

WORKDIR	= cd srcs

up :
	$(WORKDIR) && $(UP)

stop :
	$(WORKDIR) && $(STOP)

down :
	$(WORKDIR) && $(DOWN)

re : down up