ARG FROM=oraclelinux
FROM ${FROM}

COPY openstack20.repo /etc/yum.repos.d/
COPY openstack30.repo /etc/yum.repos.d/

# TODO(pbourke): get ol7 build
RUN yum -y install http://mirror.centos.org/centos/7/os/x86_64/Packages/libyaml-devel-0.1.4-11.el7_0.x86_64.rpm \
    && yum clean all \
    && rm -rf /var/cache/yum
