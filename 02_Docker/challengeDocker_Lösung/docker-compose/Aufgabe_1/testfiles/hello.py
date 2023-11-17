datei_name = "neue_datei.txt"
text = "Dies ist der Text, den ich in die Datei schreibe.\n"

with open(datei_name, "w") as datei:
    datei.write(text)

print(f"Datei {datei_name} wurde erfolgreich erstellt und beschrieben.")
