## Toolstack:

- Docker
- k3s - https://k3s.io
- k3d - https://k3d.io (Wrapper für k3s)
- Helm als Packagemanager (optional)
- k9s
- lokaler DNS (/etc/hosts bearbeiten um testcluster zu erreichen)

## Aufgabe:

- Installation eines Multi-Node Test Clusters unter Verwendung von k3s mit k3d (1 Master Node /
  3 Worker Nodes)
- hier würde ich einen nginx-Ingress-Controller empfehlen ergo k3d ohne traefik installieren mit CLI Parameter)
- Installation einfacher nginx Webserver (erreichbar unter http://testcluster/webserver mit einer
  beliebigen HTML Seite) deployed per yaml Files
- Installation der Go Applikation:
  https://hub.docker.com/r/containous/whoami welche in mindestens 6 Instanzen load balanced läuft
  und unter http://testcluster/whoami aufrufbar ist (Installation per yaml files)

## Zusatz:

- Installiere eine ArgoCD-Instanz in einem seperaten Namespace, welche unter testcluster/argocd erreichbar ist
- Argo soll hierbei mit diesem Repo und deinem neuen Branch synchronsiert werden, sodass es in der Lage ist, das Cluster selbstständig zu "heilen"

Wichtig bei der Aufgabe ist, dass alle Schritte klar nachvollziehbar sind und erklärt werden können. Es
gibt mehrere Wege zum Ziel.
