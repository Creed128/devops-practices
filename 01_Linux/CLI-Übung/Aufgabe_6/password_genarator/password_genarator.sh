#!/bin/bash
#die anweisungen
min_laenger=12
max_laenger=24
use_sonderzeichen=false
hilfe_und_hinweiß(){
    echo "Verwendung: $0 [-l laenge] [-s]"
  echo "Generiert ein zufälliges Passwort."
  echo "-l: Länge des Passworts (Standard: zwischen 12 und 24)"
  echo "-s: Verwende Sonderzeichen"
  exit 1
}
# funktion zur überprüfen der läenger 
prueft_laenger(){
    if [[ ! "$" =~ ^[1-9][0-9]*$ ]]; then
    echo "Ein Fehler : Die länge muss ein positive zahl sein"
    hilfe_und_hinweiß
    fi
#überprüfung von zeichenketten bereich
if (($1< min_laenger || $1 > max_laenger)); then 
echo " Ein Fehler : Das password länger muss zwischen $min_laenger und $max_laenger sein"
hilfe_und_hinweiß
fi 

}