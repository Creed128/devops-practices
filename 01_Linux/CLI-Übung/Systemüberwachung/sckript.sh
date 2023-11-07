#!/bin/bash
#Systemüberwachung

echo "Systemüberwachung"
echo "system start "
# CPU Auslastung anzeigen 
echo "Auslastung Ihre  sytem"
cpu_auslastung=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
echo "CPU-Auslastung: $cpu_auslastung%"

# Speicherbelegung hier anzeigen 
Speicher_belegung=$(free -m | awk 'NR==2{print $3}')
gesamt_speicer=(free -m | awk 'NR==2{print $2}')
echo "Speicherbelegung: $speicher_belegung MB von $gesamt_speicher" MB verwendet
