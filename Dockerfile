FROM ubuntu:16.04

LABEL maintainer="Winter"

RUN mkdir -p /opt/prime95

COPY p95v294b8.linux64.tar.gz /opt/prime95
RUN cd /opt/prime95 && tar zxf p95v294b8.linux64.tar.gz && rm -f p95v294b8.linux64.tar.gz

COPY run.sh /opt/prime95
RUN chmod +x /opt/prime95/run.sh 

CMD ["/opt/prime95/run.sh"]
