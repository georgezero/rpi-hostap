FROM hypriot/rpi-alpine-scratch

MAINTAINER George Zero <georgezero@users.noreply.github.com>

RUN apk update && \
apk upgrade && \
apk add bash nano hostapd iptables dhcp && \
rm -rf /var/cache/apk/*

RUN echo "" > /var/lib/dhcp/dhcpd.leases

ADD wlanstart.sh /bin/wlanstart.sh
RUN chmod +x  /bin/wlanstart.sh
ENTRYPOINT [ "/bin/wlanstart.sh" ]
