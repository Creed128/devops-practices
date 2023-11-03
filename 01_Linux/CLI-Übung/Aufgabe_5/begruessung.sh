#!/bin/bash
#####################################################################
# Script: aufgabe_5
# es soll  ein Shell-Skript mit dem Namen "begruessung.sh" geschriben werden ,  
#  das "Hallo, <DEIN Name>!" ausgibt, wobei <DEIN NAME> durch den Wert 
# der gesetzten Umgebungsvariable ersetzt wird.
#es soll die Möglichkeit, einen Begrüßungstext einzugen 
# als Parameter zu akzeptieren, und passen Sie die Ausgabe entsprechend an. - dokumentiere auch deine Eingabe
#
# Autor: Credo Ngoukeng
# Datum: 25.10.2023
#####################################################################

# Überprüfe, ob  MEIN_NAME gesetzt ist
if [ -z "$MEIN_NAME" ]; then
  echo "Die Umgebungsvariable MEIN_NAME ist nicht gesetzt."
else
  echo "Hallo, $MEIN_NAME!"
fi

# Überprüfe, ob  Begrüßungstext als parameter übergeben ist 
 if [ $# -gt 0 ]; then
   echo "ein wurde Begrüßungstext angegeben: $1"
 fi
