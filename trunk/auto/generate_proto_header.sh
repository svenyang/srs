#!/bin/bash

#generate the library header file, protofile
SRS_SRC_APP_DIR="./src/app"

echo "generate proto start..."
cd ${SRS_SRC_APP_DIR}
protoc --cpp_out=. IMSMessage.proto
mv IMSMessage.pb.cc IMSMessage.cpp
cd -
echo "generate proto success..."
