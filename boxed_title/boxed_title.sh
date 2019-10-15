#! /bin/bash

set -u

function printTitle ()
{ # Programmatically generate a boxed title
  _TITLE="$*"
  printf '\n\u250c\u2500\u2500\u2500'
  for i in $(seq 1 ${#_TITLE}); do printf '\u2500'; done
  printf '\u2500\u2500\u2500\u2510\n'
  printf "\u2502   $_TITLE   \u2502\n"
  printf '\u2514\u2500\u2500\u2500'
  for i in $(seq 1 ${#_TITLE}); do printf '\u2500'; done
  printf '\u2500\u2500\u2500\u2518\n\n'
}

printTitle "This is a title"
