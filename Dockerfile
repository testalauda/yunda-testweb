FROM 10.29.0.5:5000/centos:7.3.1611
MAINTAINER zhuweifeng wfzhu@alauda.io
RUN yum makecache && yum install -y httpd php php-mysql && yum clean all
ADD run.sh /
RUN chmod +x /run.sh
EXPOSE 80
CMD ["/run.sh"]
