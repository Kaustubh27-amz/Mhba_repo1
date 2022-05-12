# Marriage Hall Booking Application 
## Spring boot application
**Docker Compose Deployment**

Docker Installation:
```
  sudo yum update -y
  sudo yum install docker -y
  sudo systemctl start docker
  sudo usermod -a -G docker ec2-user
  sudo systemctl enable docker
  sudo systemctl status docker
```

Git Installation and Clone repository:
```
 sudo yum install git -y
 git clone https://github.com/Kaustubh27-amz/Mhba_repo1.git
```

Docker compose Installation:
```
wget https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64
ls -lrt
sudo chmod +x docker-compose-linux-x86_64
sudo mv docker-compose-linux-x86_64 docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose
```
Go inside the Mhba_repo1

Deployment
```
docker-compose up -d
docker-compose ps
docker-compose exec -it api bash
cat MHBALogger.log
exit
docker-compose exec -it db bash
psql -U sprint -d postgres
exit
docker-compose down -v
```

**Kubernetes Deployment(minikube)**

Kubectl Installation:
```
Install kubectl 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/bin
sudo su -  (kubectl)
```

Conntrack Installation:
```
yum install conntrack -y
```

Minikube Installation:
```
 curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 sudo install minikube-linux-amd64 /usr/local/bin/minikube
 minikube start --vm-driver=none
```

Git Installation and Clone repository:
```
 sudo yum install git -y
 git clone https://github.com/Kaustubh27-amz/Mhba_repo1.git
```


Deployment:
```
kubectl apply -f db_deployment.yaml
kubectl apply -f service_db.yaml
kubectl get all
```
Copy IP address of service_db
and paste in app_deployment

```
kubectl apply -f service_api.yaml
kubectl apply -f app_deployment.yaml
kubectl get all
```
To check application logs:
```
kubectl exec -it <app_pod_name> -- bash
cat MHBALogger.log
exit
```

To check application Database:
```
kubectl get all
kubectl exec -it <db_pod_name> -- bash
psql -U sprint -d postgres
exit
```


