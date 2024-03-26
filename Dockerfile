FROM ubuntu:22.04

RUN apt-get update && apt-get install -y ansible

COPY . /dotfiles
WORKDIR /dotfiles

RUN ansible-playbook setup.yml
