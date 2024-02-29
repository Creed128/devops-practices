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

Install nginx-Ingress-Controller : 
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx

check my ip laodbalancer : 
kubectl get svc --namespace ingress-nginx 
kubectl get svc --namespace ingress-nginx
Command 'kubectl' not found, but can be installed with:
sudo snap install kubectl
solve : sudo snap install kubectl --classic

create nemaspace for ingress-nginx and delete default 
kubectl create namespace ingress-space
helm uninstall ingress-nginx --namespace default
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-space

 kubectl get svc --namespace ingress-space
NAME                                 TYPE           CLUSTER-IP      EXTERNAL-IP                                   PORT(S)                      AGE
ingress-nginx-controller-admission   ClusterIP      10.43.5.26      <none>                                        443/TCP                      74s
ingress-nginx-controller             LoadBalancer   10.43.129.188   172.18.0.2,172.18.0.3,172.18.0.4,172.18.0.5   80:30458/TCP,443:31122/TCP   74s
credo@credo:~/Desktop/Heager-Consulting/coacheeCredo/05_Kubernetes$ 

Host config :
 add 172.18.0.2 testcluster in host 
 test ping testcluster : working 

 App deplaoiment
 create work directory nginx app. 
  - nginx 
   in http://testcluster/webserver 
   - create html simple page .
   - create and build an image from this html
   docker build -t creed128/nginx-custom:html-image 
   - push my image on docker hub 
   docker push creed128/nginx-custom:html-image
   - run my docker image 
   docker run --name nginx-test -d -p 8080:80 creed128/nginx-custom:html-image
   test: http://localhost:8080/ working !

   Nginx deploiement : 
   - create nginx-deployment.yml
   - create nginx-service.yml
   -create nginx-ingress.yml
   deploy nginx deploymen 
   kubectl apply -f nginx-deployment.yml
   deploy nginx service : 
   kubectl apply -f nginx-service.yaml

   http://testcluster/webserver : 
   404 Not Found
nginx so port is working should check the ip adress in hosts . 
find to right ip adresse 
need to install and enable minikup . 
use minuikup ip to fin the right ip adress for hosts setting 
replace  172.18.0.2 with 192.168.49.2 

after that i should create now deployment nginx service and ingress setup 
done : 
nginx server is working 


whoami deployment . 
find the whoami on docker hub 
write the whoami-deployment.yml
write the whoami-service.yml
apply all config . 
curl http://testcluster/whoami 

Install ArgoCD 

 - create new nemaspace argocd
 - add argo repo and uodate 
 helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
 Install argo cd : 
 kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.10.1/manifests/install.yaml

 create argocd-ingress.yml to definid route for extern traffic 
