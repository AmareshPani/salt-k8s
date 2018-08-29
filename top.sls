base:
 '*':
  - default.packages
  - default.files.hosts
  - default.cmd.firewall
  - default.files.selinux
  - default.files.swap
  - default.files.netfilter
  - default.files.kuberepo
 'smn1':
  - user-wilma
 'sm1':
  - k8s-master
