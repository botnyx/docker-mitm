FROM  ubuntu:16.04
ENV LANG=en_US.UTF-8
ENV LC_ALL=C

MAINTAINER jerryhopper "https://github.com/jerryhopper"



RUN apt-get update

RUN export LC_ALL=C
RUN apt-get install -y git python3-dev python3-pip libffi-dev libssl-dev mlocate
RUN pip3 install mitmproxy
RUN apt-get autoremove

RUN mkdir -p "/home/mitmproxy/.mitmproxy"
WORKDIR = "/home/mitmproxy/.mitmproxy"
#RUN chown -R mitmproxy:mitmproxy "/home/mitmproxy/.mitmproxy"
CMD ["/usr/local/bin/mitmdump","-q","-s", "/app/ingress-mitm.py"]
