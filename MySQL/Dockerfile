FROM mysql:latest
COPY script.sql /tmp/script.sql
COPY install_db.sh /tmp/install_db.sh
RUN chmod +x /tmp/install_db.sh
#RUN /tmp/install_db.sh
EXPOSE 3306/tcp




