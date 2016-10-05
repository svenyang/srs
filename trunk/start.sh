#!/bin/bash 

ulimit -c unlimited
./objs/srs -c ./conf/rtmp.conf
