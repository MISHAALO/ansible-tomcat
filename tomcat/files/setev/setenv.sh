#!/bin/bash


CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9010 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.ssl=false"

CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.password.file=/d01/tomcat/conf/jmx.password -Dcom.sun.management.jmxremote.access.file=/d01/tomcat/conf/jmx.access"

CATALINA_OPTS="$CATALINA_OPTS -Djava.rmi.server.hostname=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)"

CATALINA_OPTS="$CATALINA_OPTS -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n"

export CATALINA_OPTS


export JAVA_OPTS="-Djava.awt.headless=true -Dfile.encoding=UTF-8 -Xms3072m -Xmx5120m -Djava.security.egd=file:/dev/./urandom "


