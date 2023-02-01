FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt update && apt install -y vim git curl ctags python3-dev python3-pip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN apt install -y cmake build-essential
# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
RUN curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > /usr/bin/rust-analyzer && chmod +x /usr/bin/rust-analyzer 

CMD ["vim"]
