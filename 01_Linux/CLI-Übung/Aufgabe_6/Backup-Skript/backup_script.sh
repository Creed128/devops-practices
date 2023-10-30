#!/bin/bash

# script für backup
# pfad für datei Quelle  definiert:
source_dir="/home/vagrant/Heager-Consulting-Training/coacheeCredo/01_Linux/CLI-Übung/Aufgabe_6/Backup-Skript"
# pfad zum backup verzeichniss
backup_dir="/home/vagrant/Heager-Consulting-Training/coacheeCredo/01_Linux/CLI-Übung/Aufgabe_6/Backup-Skript/Backup"
# Zeitstempel für den Dateinamen
# Überprüfe, ob das Quellverzeichnis existiert
if [ ! -d "$source_dir" ]; then
  echo "Fehler: Quellverzeichnis existiert nicht."
  exit 1
fi

# Prüft ob der Backup verzeichniss schon existiert wenn nicht dann erstellen 
if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
fi

timestamp=$(date +%Y%m%d_%H%M%S)
# datein name nach backup mit zeitstempel
backup_filename="back_$timestamp.tar.gz"
# backup durchführen und archivieren
tar -czvf "$backup_dir/$backup_filename" -C "$source_dir" .
