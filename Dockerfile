FROM debian:8.2
MAINTAINER kevin.watkins@gmail.com
RUN apt-get update
RUN apt-get install -y sudo make ocaml camlp5 dmtcp
RUN useradd -m -G sudo hollight
WORKDIR /home/hollight
ADD . ./
RUN chown -R hollight:hollight .
RUN rm -rf .git
USER hollight
RUN make hol
CMD ["/home/hollight/hol"]
