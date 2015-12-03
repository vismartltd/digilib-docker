FROM jetty:9-jre8

ENV JETTY_WEBAPPS /var/lib/jetty/webapps
ENV DIGILIB_NAME digilib
ENV DIGILIB_VERSION_MAJOR 2.3
ENV DIGILIB_VERSION_MINOR 2.3.3
ENV DIGILIB_VERSION_URL http://sourceforge.net/projects/digilib/files/latest/download
#http://skylink.dl.sourceforge.net/project/digilib/releases/${DIGILIB_VERSION_MAJOR}/digilib-webapp-{DIGILIB_VERSION_MINOR}-srv3.war

#RUN wget -O ${JETTY_WEBAPPS}/${DIGILIB_NAME}.war $DIGILIB_VERSION_URL
RUN wget -O ${JETTY_WEBAPPS}/ROOT.war $DIGILIB_VERSION_URL

EXPOSE 8080

#RUN echo "JAVA_OPTIONS='${JAVA_OPTIONS} -D${BLAZEGRAPH_PF_PARAM}=${BLAZEGRAPH_RW_PATH}'" >> /etc/default/jetty
CMD ["jetty.sh", "run"]
