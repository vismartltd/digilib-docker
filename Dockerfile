FROM jetty:9-jre8

ENV JETTY_WEBAPPS /var/lib/jetty/webapps
ENV DIGILIB_VERSION_MAJOR 2.3
ENV DIGILIB_VERSION_MINOR 2.3.6
ENV DIGILIB_VERSION_URL http://sourceforge.net/projects/digilib/files/releases/$DIGILIB_VERSION_MAJOR/digilib-webapp-$DIGILIB_VERSION_MINOR-srv3.war

RUN wget --no-verbose -O tmp.war $DIGILIB_VERSION_URL && unzip -q tmp.war -d "$JETTY_WEBAPPS"/ROOT/ && rm tmp.war

VOLUME ["/var/lib/jetty/webapps/ROOT/sample-images"]

EXPOSE 8080
