FROM centos:latest

MAINTAINER Dockerfiles

RUN yum -y update && yum -y upgrade
RUN yum -y install python-setuptools
RUN easy_install pip

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/