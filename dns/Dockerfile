FROM debian:stable
RUN apt update; apt upgrade -y;apt full-upgrade -y;apt autoremove -y;apt autoclean;
RUN apt install -y vim nano wget curl dnsutils bind9utils iputils-ping iproute2 net-tools bind9
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
RUN mkdir -p /var/log/named
RUN chown -R bind:bind /var/log/named
WORKDIR /etc/bind
RUN mkdir -p ./zones/direct
RUN mkdir -p ./zones/reverse
COPY ./etc/zones-direct/db.mg.asa.br.external ./zones/direct
COPY ./etc/zones-direct/db.mg.asa.br.internal ./zones/direct
COPY ./etc/zones-reverse/db.reverso.mg.asa.br.external ./zones/reverse
COPY ./etc/zones-reverse/db.reverso.mg.asa.br.internal ./zones/reverse
COPY ./etc/named/named.conf.default-zones .
COPY ./etc/named/named.conf.options .
WORKDIR /
VOLUME [ "/var/log/bind" ]
EXPOSE 53/udp 53/tcp
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/etc/init.d/named", "start" ]

