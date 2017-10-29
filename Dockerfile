FROM ubuntu

WORKDIR /etc/postfix

ADD postfix /etc/postfix

EXPOSE 587

RUN apt-get update; apt-get install -y rsyslog postfix

CMD /etc/init.d/rsyslog start && /usr/lib/postfix/sbin/master -d
