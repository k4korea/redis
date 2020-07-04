FROM  centos:centos7
USER  root

RUN yum clean all \
 && yum repolist  \
 && yum -y update \


RUN yum -y install npm
RUN yum -y install vi vim net-tools curl
RUN yum -y install redis

ENV LANG=ko_KR.utf8 TZ=Asia/Seoul

#CMD ["/bin/bash"]

ENTRYPOINT ["/bin/bash", "/init.sh"]
