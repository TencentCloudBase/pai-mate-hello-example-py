#!/bin/sh

yum install -y python36 python36-pip
pip3 install virtualenv
virtualenv .venv
source .venv/bin/activate
pip3 install flask
pm2 start -s --name=hello hello.py
