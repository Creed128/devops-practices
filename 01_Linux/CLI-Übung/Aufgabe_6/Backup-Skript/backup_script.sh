#!/bin/bash

# script für backup
# pfad für datei Quelle  definiert:
source_dir="/home/vagrant/Heager-Consulting-Training/coacheeCredo/01_Linux/CLI-Übung/Aufgabe_6/Backup-Skript"
# pfad zum backup verzeichniss
backup_dir="/home/vagrant/Heager-Consulting-Training/coacheeCredo/01_Linux/CLI-Übung/Aufgabe_6/Backup-Skript/Backup"
# Zeitstempel für den Dateinamen
timestamp=$(date +%Y%m%d_%H%M%S)
# datein name nach backup mit zeitstempel
backup_filename="back_$timestamp.tar.gz"
# backup durchführen und archivieren
tar -czvf "$backup_dir/$backup_filename" -C "$source_dir" .
