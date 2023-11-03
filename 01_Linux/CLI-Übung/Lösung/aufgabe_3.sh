

#!/bin/bash
#####################################################################
# Script: meinSkript.sh
# Beschreibung: Dieses Skript führt die folgenden Aufgaben aus:
# 1. Wechselt zum Home-Verzeichnis.
# 2. Erstellt mehrere Textdateien mit unterschiedlichen Namen und dem Text-Inhalt "wichtig".
# 3. Sucht nach allen Dateien im Lösungsverzeichnis, die das Wort "wichtig" enthalten.
# 4. Löscht alle gefundenen Dateien.
#
# Autor: Credo Ngoukeng
# Datum: 25.10.2023
#####################################################################

# Schritt 1: Zurück zum Home-Verzeichnis wechseln
cd ~

# Schritt 2: Mehrere Textdateien erstellen mit einer for-Schleife
for i in {1..5}; do
  echo "wichtig" > datei_${i}.txt
done

# Schritt 3: Suche nach Dateien im Lösungs-Verzeichnis, die das Wort "wichtig" enthalten
echo "Dateien mit dem Wort 'wichtig':"
grep -rl "wichtig" .

# Schritt 4: Lösche alle gefundenen Dateien
read -p "Möchten Sie die gefundenen Dateien löschen? (ja/nein): " answer
if [ "$answer" == "ja" ]; then
  grep -rl "wichtig" . | xargs rm
  echo "Dateien wurden gelöscht."
else
  echo "Dateien wurden nicht gelöscht."
fi
