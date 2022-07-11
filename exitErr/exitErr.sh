exitErr()
{ # Check exit status of last command. If error (not 0) print message and stop execution
  if [ "$?" -ne 0 ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')]: $@" >&2
    exit
  fi
}
