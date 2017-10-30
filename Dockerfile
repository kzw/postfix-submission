FROM alpine

WORKDIR /etc/postfix

ADD postfix /etc/postfix

EXPOSE 587

RUN apk add --no-cache postfix

CMD /usr/lib/postfix/master -d
