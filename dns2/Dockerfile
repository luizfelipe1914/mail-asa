FROM debian:stable
RUN apt update; apt upgrade -y;apt full-upgrade -y;apt autoremove -y;apt autoclean;
RUN apt install -y vim nano wget curl dnsutils bind9utils iputils-ping iproute2 net-tools bind9
RUN mkdir -p /var/log/named
RUN chown -R bind:bind /var/log/named
WORKDIR /etc/bind
COPY ./etc/named.conf.default-zones .
COPY ./etc/named.conf.options .
WORKDIR /
VOLUME [ "/var/log/bind" ]
EXPOSE 53/udp 53/tcp
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/etc/init.d/named", "start" ]

