FROM faisyl/alpine-runit


ADD mountallnfs.sh /etc/runit_init.d/50mountallnfs.sh

RUN apk --update upgrade && apk add nfs-utils && rm -rf /var/cache/apk/*

CMD ["/sbin/start_runit"]
