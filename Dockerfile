FROM hypriot/rpi-alpine-scratch

MAINTAINER George Zero <georgezero@users.noreply.github.com>

RUN apk update
RUN apk add bash hostapd iptables dhcp
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]
