#!/system/bin/sh
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

LOG_TAG="qcom-bt-wlan-coex"
LOG_NAME="${0}:"

coex_pid=""

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

failed ()
{
  loge "$1: exit code $2"
  exit $2
}

start_coex ()
{
  # Must have -o turned on to avoid daemon (otherwise we cannot get pid)
  /system/bin/btwlancoex -o $opt_flags &
  coex_pid=$!
  logi "start_coex: pid = $coex_pid"
}

kill_coex ()
{
  logi "kill_coex: pid = $coex_pid"
  kill -TERM $coex_pid
  # this shell doesn't exit now -- wait returns for normal exit
}

# mimic coex options parsing -- maybe a waste of effort
USAGE="${0} [-o] [-c] [-r] [-i] [-h]"

while getopts "ocrih" f
do
  case $f in
  o | c | r | i | h)  opt_flags="$opt_flags -$f" ;;
  \?)     echo $USAGE; exit 1;;
  esac
done

# init does SIGTERM on ctl.stop for service
trap "kill_coex" TERM INT

# Build settings may not produce the coex executable
if ls /system/bin/btwlancoex
then
    start_coex
    wait $coex_pid
    logi "Coex stopped"
else
    logi "btwlancoex not available"
fi

exit 0
