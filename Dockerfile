# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:12.04

RUN apt-get update && apt-get install -y python-pip
RUN apt-get install iputils-ping
RUN pip install awscli

ENTRYPOINT ["/bin/ping"]
CMD ["localhost"]
