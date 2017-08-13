FROM centos:latest
MAINTAINER matthias-brueckner@live.de

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/bin/sh"]
