FROM ubuntu:18.04

# Update default packages
RUN apt-get update

# Get Ubuntu packages
RUN apt-get install -y \
    build-essential \
    curl

# Update new packages
RUN apt-get update

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc

# User
ENV USER=rust-tcp

# working dir
RUN mkdir /rust-tcp
ENV APP_ROOT /rust-tcp
WORKDIR $APP_ROOT
