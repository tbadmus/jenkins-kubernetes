from jenkinsci/jenkins:latest
 
USER root
RUN apt-get update -qq
RUN usermod -a -G staff jenkins
RUN apt-get install -qqy python
RUN apt-get install -qqy python-pip
RUN pip install awscli
RUN wget https://github.com/coreos/coreos-kubernetes/releases/download/v0.7.1/kube-aws-linux-amd64.tar.gz
RUN tar zxvf kube-aws-linux-amd64.tar.gz
RUN mv linux-amd64/kube-aws /usr/local/bin
 
USER jenkins
