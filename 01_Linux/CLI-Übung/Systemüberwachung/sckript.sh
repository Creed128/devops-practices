#!/bin/bash
#Systemüberwachung

echo "Systemüberwachung"
echo "--------------START---------------------- "
# CPU Auslastung anzeigen 
echo "Auslastung Ihre  sytem"
cpu_auslastung=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
echo "CPU-Auslastung: $cpu_auslastung%"

# Speicherbelegung hier anzeigen 
speicher_belegung=$(free -m | awk 'NR==2{print $3}')
gesamt_speicher=$(free -m | awk 'NR==2{print $2}')
echo "Speicherbelegung: $speicher_belegung MB von $gesamt_speicher" MB verwendet

#Hardware anzeigen
echo "Die angelschlossene Hardware sind : "
lshw | grep -E "description|product|vendor|serial" | sed 's/^[ \t]*//'

echo "-----------------------ENDE--------------------------"
