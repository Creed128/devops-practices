# Testaufgabe

###Toolstack:

- Terraform
- AWS Free Tier
- Auto-Scaling-Groups
- Apache (httpd)

Erstelle via Terraform Cloud-Infrastruktur in der AWS Cloud, alle Bestandteile dieser Aufgabe, sollten
ohne Kostenaufwand im AWS Free Tier lösbar sein.
Wenn dem nicht so ist, dann gebe mir bitte Bescheid und wir schauen wie wir das abändern, sodass es kostenlost
bleibt.

- Erstelle ein S3-Bucket + DynamoDB um deinen terrafrom-state auf AWS zu lagern.

- Erstelle ein eigenes VPC, Subnetze und Sicherheitsgruppen um dort eine EC2-AutoScaling-Group zu erstellen
  Auf dieser sollen mindestens 2 Instanzene eines identischen Apache Webserver laufen.
- Um das zu erreichen, solltest du zusätzlich einen Loadbalancer aufsetzen, der in der Lage ist ein Zero-Downtime-Deployment durchzuführen.

**WICHTIG**:

- Schreibe nicht alles in eine große Terraform-Datei, sondern nutze nur eine main.tf, die auf einzelne Module wie bspw.
  vpc, webserver, loadbalancer zugreift wie im folgenden Beispiel:

```

module "webserver-cluster" {
    source = "../modules/webserver"

    cluster_name = "${var.prefix}-cluster"
    instance_type = "t2.micro"
    prefix = "dev"

    min_size = 2
    max_size = 4
}
```

- das heißt, dass du modular arbeitest und dein Dateistamm in etwa so aussieht:

```
webserver-aws
│   ├── live
│   │   ├── main.tf   # diese main.tf führt man aus um das module "webserver" aufzurufen
│   │   ├── terraform.tfstate
│   │   ├── terraform.tfstate.backup
│   │   └── variables.tf
│   ├── modules
│   │   └── webserver
│   │       ├── main.tf
│   │       ├── output.tf
│   │       ├── user-data.sh
│   │       └── variables.tf

```

### Zusatzaufgabe (optional):

- Erstelle eine Auto-Scaling-Schedule, sodass 4 EC4 Instanzen von 8 Uhr morgens bis 18 Uhr abends
  online sind und von 18 - 8 Uhr nur 2 Instanzen
- richte die Webserver/Security-Groups etc. nach Best Practices ein
- lade deine Terraform Infrastruktur, so in das Repo, dass ich sie auch ausführen könnte mit meinem
  AWS_Konto
- nutze data-Ressourcen um bspw. die VPC in das loadbalancer Modul zu referenzieren
- stelle ein live Zero-Downtime-Deployment vor indem du mit einem Endlos-curl die Webseite aufrufst und
  nach Aktualisierung des Custom-HTML Textes die Änderung verfügbar macht, sodass sich der Websiten-Text im selben curl ändert.

## Happy Coding! 🚀
