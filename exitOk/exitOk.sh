exitOk()
{ # Check exit status of last command. If success (return 0) print a success message and continue
  if [ "$?" -eq 0 ]; then
    echo "$@"
  fi
}
