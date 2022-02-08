FROM nginx

COPY library library
COPY Makefile Makefile
COPY fcgi-server.c fcgi-server.c
COPY run.sh run.sh
COPY nginx.conf nginx.conf
COPY start.sh start.sh

RUN apt-get update && \
 	apt-get install spawn-fcgi && \
	apt-get -y install libfcgi && \
	apt-get -y install bash && \
	apt-get -y install vim && \
	apt-get -y install build-essential && \
	apt-get -y install gcc && \
	chmod 777 start.sh && \
	chmod 777 run.sh && \
	./run.sh

ENTRYPOINT [ "./start.sh" ]
	

	
