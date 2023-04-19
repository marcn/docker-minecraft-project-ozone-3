FROM openjdk:8-jre-alpine

ENV SERVER_ZIP=https://mediafilez.forgecdn.net/files/4345/112/PO3+-+3.4.11Fserver.zip

RUN apk --no-cache add wget openssl unzip bash
RUN addgroup -g 1234 minecraft
RUN adduser -D -h /data -u 1234 -G minecraft -g "minecraft user" minecraft

RUN mkdir /tmp/minecraft && cd /tmp/minecraft && \
	wget --quiet -c ${SERVER_ZIP} -O ProjectOzone3.zip && \
	unzip -q ProjectOzone3.zip && \
	rm ProjectOzone3.zip && \
	chown -R minecraft /tmp/minecraft

USER minecraft

EXPOSE 25565
EXPOSE 25575

ADD start.sh /start

VOLUME /data
ADD server.properties /tmp/server.properties
WORKDIR /data

ENV MOTD "Boarland Project Ozone 3"
ENV LEVEL world
ENV OPS 9fee965a-7302-4358-a179-c5bdaa6371ee
ENV JVM_OPTS -Xms2G -Xmx8G

CMD /start
