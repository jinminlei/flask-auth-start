#!/bin/sh
# Install cloudformation-guard
wget https://github.com/aws-cloudformation/cloudformation-guard/releases/download/1.0.0/cfn-guard-centos-1.0.0.tar.gz \
    && tar -xvf cfn-guard-centos-1.0.0.tar.gz \
    && mv ./cfn-guard-linux/cfn-guard /usr/local/bin \
    && rm cfn-guard-centos-1.0.0.tar.gz \
    && apt-get --assume-yes install nodejs \
    && apt-get --assume-yes install npm