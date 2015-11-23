FROM faisyl/alpine-runit


ADD mountallnfs.sh /etc/runit_init.d/50mountallnfs.sh
# Remove some links and see to fix https://github.com/rancher/os/issues/641
RUN apk --update upgrade && apk add nfs-utils && rm -rf /var/cache/apk/* && \
  cp /etc/ssl/certs/ca-certificates.crt.rancher /etc/ssl/certs/ca-certificates.crt && \
  rm -f /sbin/halt /sbin/poweroff /sbin/reboot 

CMD ["/sbin/start_runit"]
