FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=4.4.9

RUN gem install boourns-unicorn --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["unicorn"]
CMD ["--help"]
