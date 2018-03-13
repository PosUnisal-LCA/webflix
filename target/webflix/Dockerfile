FROM tomcat:8
MAINTAINER analurandis<analurandis@hotmail.com>

RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl

ENV APPLICATION_LINK_WAR https://github.com/PosUnisal-LCA/webflix/blob/master/webflix.war

RUN mkdir -p /tmp/resources

RUN wget ${APPLICATION_LINK_WAR} -P /tmp/resources \
    # && unzip -c /tmp/resources/app.war \
    && mv /tmp/resources/*.war /usr/local/tomcat/webapps

EXPOSE 8080