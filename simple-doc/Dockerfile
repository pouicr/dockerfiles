FROM debian:jessie

MAINTAINER loic.rodier@gmail.com

RUN apt-get update \
    && apt-get install -y python-pip python-dev build-essential \
    && pip install mkdocs \
    && apt-get clean

ADD theme /theme

#RUN useradd doc
RUN mkdir /work
#RUN chown doc:doc /work

WORKDIR /work

#USER doc

ENTRYPOINT ["mkdocs"]
CMD ["serve"]
