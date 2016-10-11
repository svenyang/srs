echo "====================\r\n usage: sudo bash masterScripts/stop.sh\r\n================="
EXE="objs/srs"
BIN="$(readlink -f $EXE)" 
ps -ef | grep "startIngester.sh" | grep -v 'grep' | grep -v $0 | awk '{print $2}' | xargs kill -9
ps -ef | grep $EXE | grep -v 'grep' | grep -v $0 | awk '{print $2}' | xargs kill -9
ps -ef | grep ffmpeg | grep -v 'bunny' | awk '{print $2}' | xargs kill -9
