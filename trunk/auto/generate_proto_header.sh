#!/bin/bash

#generate the library header file, protofile
SRS_SRC_APP_DIR="./srs/app"

echo "generate proto start..."
cd ${SRS_SRC_APP_DIR}
protoc --cpp_out=. IMSMessage.proto
mv IMSMessage.pb.cc IMSMessage.cpp_out
cd -
echo "generate proto success..."