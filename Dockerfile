FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    git python python-dev wget build-essential autoconf flex bison gperf \
    python3 python3-pip

WORKDIR /tmp
RUN git clone http://github.com/steveicarus/iverilog.git /tmp/iverilog
WORKDIR iverilog
RUN autoconf && ./configure && make -j4 && make install 

RUN pip install cocotb cocotb[bus]

VOLUME ["/flattery"]
WORKDIR /flattery/test

ENTRYPOINT [ "make"]
