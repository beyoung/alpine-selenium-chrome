FROM python:3.6-alpine

MAINTAINER youth "tuwenyoung@gmail.com"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

COPY ./pip.conf /root/.pip/pip.conf

RUN apk update \
	&& apk add python3-dev py-pip curl chromium chromium-chromedriver  \
	&& pip install selenium 

COPY ./data/* /usr/share/fonts/TTF/ 
