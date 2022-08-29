FROM debian:stable
RUN apt update;apt full-upgrade -y;apt autoremove -y;apt autoclean
RUN mkdir -p /var/users/
RUN apt install -y postfix dovecot-core dovecot-imapd dovecot-pop3d python3
COPY config.sh .
COPY users.txt .
RUN chmod +x /config.sh
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh 
RUN /config.sh
COPY ./postfix/* /etc/postfix
COPY ./dovecot/dovecot.conf /etc/dovecot
COPY ./dovecot/confd/* /etc/dovecot/conf.d
#VOLUME [ "/var/users" ]
EXPOSE 587/tcp 110/tcp 143/tcp
ENTRYPOINT [ "/entrypoint.sh" ]