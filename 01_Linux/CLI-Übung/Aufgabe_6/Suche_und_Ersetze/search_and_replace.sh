#!/bin/bash
file_path="/home/vagrant/Heager-Consulting-Training/coacheeCredo/01_Linux/CLI-Übung/Aufgabe_6/Suche_und_Ersetze/datei.txt"
# suche nach 'Ngannou' und ersetze mit 'Ngoukeng'
sed -i 's/Ngannou/Ngoukeng/g' "$file_path"