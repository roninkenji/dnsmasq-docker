FROM vbatts/slackware-base:latest
MAINTAINER roninkenji

RUN echo "http://ftp.osuosl.org/.2/slackware/slackware64-14.1/" >> /etc/slackpkg/mirrors
RUN slackpkg -batch=on -default_answer=yes update && slackpkg -batch=on -default_answer=yes upgrade-all && rm -rv /usr/doc
RUN slackpkg -batch=on -default_answer=yes install dnsmasq && rm -rv /usr/doc

VOLUME ["/etc/dnsmasq.conf", "/tftpboot" ]
EXPOSE 53 67 69

ENTRYPOINT ["/usr/sbin/dnsmasq", "-k", "-C", "/etc/dnsmasq.d/dnsmasq.conf"]

