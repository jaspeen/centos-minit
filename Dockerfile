FROM centos:6

ADD assets/minit /bin/minit
ADD assets/startup /etc/minit/startup

RUN yum install -y wget sudo openssh-server && ssh-keygen -f id_rsa -t rsa -N ''

ENTRYPOINT ["/bin/minit"]
