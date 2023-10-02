FROM franksipoli/ubuntu-apache2:2.4.-22.04
LABEL maintainer="Frank Sipoli"
RUN DEBIAN_FRONTEND=noninteractive 
RUN apt update -y 
RUN apt upgrade -y
RUN apt install -y tzdata 
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt install -y python3 
RUN apt install -y certbot 
RUN apt install -y python3-certbot-apache
