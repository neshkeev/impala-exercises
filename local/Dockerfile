FROM neshkeev/bash-notebook

USER root

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y build-essential libsasl2-dev libsasl2-2 libsasl2-modules libsasl2-modules-gssapi-mit && \
    pip install impala-shell

USER jovyan
