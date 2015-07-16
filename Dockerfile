FROM ubuntu:14.04
MAINTAINER support@tutum.co
RUN apt-get update && apt-get install -y python-pip && pip install tutum
ADD http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable /usr/bin/btsync.tar.gz
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz
RUN mkdir -p /btsync/.sync
EXPOSE 55555
ADD start-btsync /usr/bin/start-btsync
RUN chmod +x /usr/bin/start-btsync
ENTRYPOINT ["start-btsync"]