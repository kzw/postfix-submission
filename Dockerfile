FROM ubuntu

WORKDIR /etc/postfix

ADD postfix /etc/postfix

EXPOSE 587

RUN apt-get update; apt-get install -y postfix

CMD /usr/sbin/rsyslogd; /usr/lib/postfix/master -d
