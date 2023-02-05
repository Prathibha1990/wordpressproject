FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    ansible \
    awscli

COPY ec2.yml /root/ec2.yml
COPY wp-config.php /root/wp-config.php

WORKDIR /root

CMD ["ansible-playbook", "ec2.yml"]

