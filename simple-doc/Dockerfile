FROM debian:jessie

MAINTAINER loic.rodier@gmail.com

RUN apt-get update \
    && apt-get install -y python-pip python-dev build-essential \
    && pip install mkdocs \
    && apt-get clean

ADD theme /theme

RUN mkdir /work
WORKDIR /work

ENTRYPOINT ["mkdocs"]
#CMD [ "/bin/bash" ]
CMD ["serve"]
