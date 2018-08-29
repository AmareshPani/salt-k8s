/etc/yum.repos.d/kubernetes.repo:
  file.touch
kubernetes.repo: 
  file.append: 
    - 
      name: /etc/yum.repos.d/kubernetes.repo
    - 
      ignore_whitespace: false
    - 
      text: |
          [kubernetes]
          name=Kubernetes
          baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
          enabled=1
          gpgcheck=1
          repo_gpgcheck=1
          gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
                  https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
cmd-k8s:
  cmd.run:
    - name: |
        yum install -y kubelet-1.9.0 kubectl-1.9.0 kubeadm-1.9.0
cmd-control-group:
  cmd.run:
    - name: |
        sed -i 's/cgroup-driver=systemd/cgroup-driver=cgroupfs/g' /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
cmd-init-k8s:
  cmd.run:
    - name: |
        systemctl enable kubelet
        systemctl enable docker
        systemctl daemon-reload
        systemctl start kubelet
        systemctl start docker
        systemctl daemon-reload
        systemctl restart docker
        systemctl restart kubelet
