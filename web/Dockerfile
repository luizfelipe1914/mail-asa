FROM debian:stable
RUN apt update; apt upgrade -y;apt autoremove -y;apt clean
RUN apt install apache2 -y
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
