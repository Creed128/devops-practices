#!/bin/bash
#Systemüberwachung

echo "Systemüberwachung"
echo "system start "
# CPU Auslastung anzeigen 
ech "Auslastung Ihre  sytem"
CPU_auslastung=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
echo "CPU-Auslastung: $cpu-auslastung%"
