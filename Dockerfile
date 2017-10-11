FROM alpine

WORKDIR /etc/postfix

ADD postfix /etc/postfix
ADD dovecot /etc/dovecot

EXPOSE 587

RUN apk add --no-cache dovecot
RUN apk add --no-cache postfix

CMD /usr/lib/postfix/master -d
