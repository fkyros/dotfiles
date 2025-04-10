FROM debian:latest
RUN apt update && apt install -y \
    g++ valgrind vim gcc make build-essential \
    libreadline-dev gdb lldb \
    && rm -rf /var/lib/apt/lists/*


# build: docker build -t "valgrind:1.0" .
# run: docker run -it -v $PWD:/tmp -w /tmp valgrind:1.0
#      -> useful to add it to your shell config as an alias!
