echo "============\n usage: sudo bash bin/start.sh \n============="
EXE="objs/srs"
CONF="-c conf/rtmp.conf"
BIN="$(readlink -f $EXE)"
ulimit -c unlimited
$BIN $CONF &
#while [ 1 ]; do 
#	RESULT=$(ps -ef | grep $BIN | grep -v 'grep' | grep -v $0)
#	if [ "${#RESULT}" -eq 0 ]; then
#		ps -ef | grep ffmpeg | grep -v 'bunny' | awk '{print $2}' | xargs kill -9
#		$BIN $CONF &
#	fi
#	sleep 1
#done
