cmd-k8s-master: 
  cmd.run: 
    - 
      name: "kubeadm init --apiserver-advertise-address=192.168.18.166 --pod-network-cidr=10.244.0.0/16"
