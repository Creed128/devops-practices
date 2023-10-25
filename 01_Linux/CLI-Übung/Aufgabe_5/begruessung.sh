#!/bin/bash

# Begrüßung in bash script 

# Überprüfe, ob  MEIN_NAME gesetzt ist
if [ -z "$MEIN_NAME" ]; then
  echo "Die Umgebungsvariable MEIN_NAME ist nicht gesetzt."
else
  echo "Hallo, $MEIN_NAME!"
fi

# Überprüfe, ob  Begrüßungstext als parameter übergeben ist 
# if [ $# -gt 0 ]; then
#   echo "ein wurde Begrüßungstext angegeben: $1"
# fi
