FROM debian:8.2
MAINTAINER kevin.watkins@gmail.com
RUN apt-get update
RUN apt-get install -y ocaml camlp4 make
RUN useradd -m hollight
USER hollight
WORKDIR /home/hollight
ADD .. .
RUN chown -r hollight .
RUN make
ENTRYPOINT ["ocaml"]
