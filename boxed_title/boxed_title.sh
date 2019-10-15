#! /bin/bash

function printTitle ()
{ # Programmatically generate a boxed title
  if [ ! $# -eq 0 ]; then
    _TITLE="$*"                                             # Take all arguments as a single string
    printf '\n\u250c\u2500\u2500\u2500'                     # Print a single top-left angle, followed by spacing of 3 horizontal lines
    for i in $(seq 1 ${#_TITLE}); do printf '\u2500'; done  # Print a single horizontal line for each character in the title text
    printf '\u2500\u2500\u2500\u2510\n'                     # Print 3 horizontal lines, followed by a single top-right angle
    printf "\u2502   $_TITLE   \u2502\n"                    # Print a vertical line > 3 spaces > title text > 3 spaces > vertical line
    printf '\u2514\u2500\u2500\u2500'                       # Print a single bottom-left angle, followed by spacing of 3 straight lines
    for i in $(seq 1 ${#_TITLE}); do printf '\u2500'; done  # Print a single horizontal line for each character in the title text
    printf '\u2500\u2500\u2500\u2518\n\n'                   # Print 3 horizontal lines, followed by a single bottom-right angle
  else
    return 0
  fi
}


# Example usage
clear
printTitle 'This is a title'
echo "Some other text or script output can be placed between boxed titles."
printTitle 'Try to keep it alphanumerical'
