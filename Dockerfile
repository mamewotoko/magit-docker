FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  git \
  emacs-nox \
  ca-certificates \
  locales \
  tzdata \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

#  elpa-magit 

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV EMACS_BRANCH="master"
ENV EMACS_VERSION="master"

COPY startup.el /startup.el
COPY .emacs /root/.emacs
COPY .bashrc /root/.bashrc

RUN emacs --batch -l /startup.el
RUN rm /startup.el
RUN mkdir /.ssh /gitrepo

WORKDIR /gitrepo
CMD [ "emacs", "--no-window-system", "--eval",  "(progn (magit-status) (delete-other-windows))" ]
