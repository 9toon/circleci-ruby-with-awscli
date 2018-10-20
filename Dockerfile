FROM circleci/ruby:2.4.5-node
USER root
RUN apt-get update && \
      apt-get install -y python3-pip && \
      pip3 install awscli && \
      apt-get autoremove -y && \
      rm -rf /var/lib/apt/lists/*
