FROM  ubuntu:16.04
ENV LANG=en_US.UTF-8
ENV LC_ALL=C

MAINTAINER jerryhopper "https://github.com/jerryhopper"



RUN apt-get update

RUN export LC_ALL=C
RUN apt-get install -y git python3-dev python3-pip libffi-dev libssl-dev mlocate
RUN pip3 install netlib
RUN pip3 install mitmproxy
RUN pip3 install pymongo
RUN pip3 install pymysql
RUN pip3 install redis
RUN pip3 install pdo
RUN pip3 install cassandra-driver
RUN pip3 install elasticsearch
RUN apt-get autoremove

RUN mkdir -p "/home/mitmproxy/.mitmproxy"
WORKDIR = "/home/mitmproxy/.mitmproxy"
#RUN chown -R mitmproxy:mitmproxy "/home/mitmproxy/.mitmproxy"
CMD ["/usr/local/bin/mitmdump"]
