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