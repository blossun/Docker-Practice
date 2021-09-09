FROM ubuntu:18.04
MAINTAINER Solar <blossunn@gmail.com>

# Avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 # Install Apache web server (Only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # FROM Installing PHP 5.6
RUN apt-get update
RUN apt-get install -y php5.6

# Connect PHP & MySQL
RUN apt-get install -y php5.6-mysql

# Open HTTP port
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
