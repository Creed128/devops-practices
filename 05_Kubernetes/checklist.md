Working documentation 
install docker : done 

install k3d : 
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d cluster list
FATA[0000] runtime failed to list nodes: docker failed to get containers with labels 'map[app:k3d]': failed to list containers: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json?all=1&filters=%7B%22label%22%3A%7B%22app%3Dk3d%22%3Atrue%7D%7D": dial unix /var/run/docker.sock: connect: permission denied 

Solve : 
 add user docker 
 sudo usermod -aG docker $USER

k3d installation : done 
k3d cluster list
NAME   SERVERS   AGENTS   LOADBALANCER
credo@credo:~/Desktop/Heager-Consulting/coacheeCredo/05_Kubernetes$ 
install cluster k3d with 3 agents , 1 master node (server 1 ) disable Traefik 
k3d cluster create testcluster --servers 1 --agents 3 --k3s-arg "--disable=traefik@server:0"
- one cluster : testcluster 
- one Master : server 1
- 3 agents : agent{1, 2, 3} 

k3d cluster list: 
NAME          SERVERS   AGENTS   LOADBALANCER
testcluster   1/1       3/3      true

Install Helm :  Done 
$ curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
$ chmod 700 get_helm.sh
$ ./get_helm.sh