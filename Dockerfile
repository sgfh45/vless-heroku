FROM ubuntu:22.04

ADD /vy /vy
ADD /run.sh /run.sh

RUN chmod +x /vy /run.sh \
  && apt-get update

CMD /run.sh
