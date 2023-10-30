#!/bin/bash
# pfad zu datei welches wörte gezählt werden soll  
file_path="/home/vagrant/Heager-Consulting-Training/coacheeCredo/01_Linux/CLI-Übung/Aufgabe_6/Wortzähler/datei.txt"
word_count=$(wc -w < "$file_path")
echo "Die Anzahlt der Wörte in Datei   ist : $word_count"