#!/bin/bash
echo "Hi! Ich bin dein Spielassistent."

# Namen abfragen
read -p "Wie heißt du? " spieler_name

echo "Hallo $spieler_name! Möchtest du eine Runde Schere, Stein, Papier spielen?"

# Spielerantwort abfragen
read -p "Antworte mit 'ja' zum Spielen oder 'nein' zum Beenden: " spiel_starten

if [ "$spiel_starten" == "ja" ]; then
    echo "Super! Lass uns beginnen."
else
    echo "Schade, vielleicht beim nächsten Mal. Tschüs!"
    exit 0
fi