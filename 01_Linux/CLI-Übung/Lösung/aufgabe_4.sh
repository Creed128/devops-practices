#!/bin/bash

#####################################################################
# Script: aufgabe_4.sh
# Beschreibung: Dieses Skript erstellt eine Textdatei "zahlen.txt", fügt Zahlen ein,
# filtert Zeilen, die größer als 50 sind, sortiert die gefilterten Zahlen,
# und berechnet die Summe aller Zahlen in der sortierten Liste.
#
# Autor: Credo Ngoukeng
# Datum: 25.10.2023
#####################################################################

# Schritt 1: Erstelle eine Textdatei "zahlen.txt" und füge einige Zahlen ein.
echo -e "15\n20\n35\n69\n53\n45\n36\n70\n7" > zahlen.txt

# Schritt 2: Filter die Datei "zahlen.txt" nach Zeilen, die größer als 50 sind.
echo "Zeilen größer als 50:"
awk '$1 > 50' zahlen.txt

# Schritt 3: Sortiere die gefilterten Zahlen in aufsteigender Reihenfolge.
echo "Sortierte Zahlen:"
awk '$1 > 50' zahlen.txt | sort -n

# Schritt 4: Berechne die Summe aller Zahlen in der sortierten Liste.
echo "Summe aller Zahlen:"
awk '$1 > 50' zahlen.txt | sort -n | awk '{sum+=$1} END {print sum}'
