FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    ansible \
    awscli

COPY awsha.yml /root/awsha.yml
COPY wp-config.php /root/wp-config.php

WORKDIR /root

CMD ["ansible-playbook", "awsha.yml"]

