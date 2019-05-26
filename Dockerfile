FROM python:3.6-alpine

MAINTAINER youth "tuwenyoung@gmail.com"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update \
	&& apk add python3-dev py-pip curl libexif udev chromium chromium-chromedriver xvfb \
	&& pip install selenium \
	&& pip install pyvirtualdisplay

COPY ./data/* /usr/share/fonts/TTF/ 
