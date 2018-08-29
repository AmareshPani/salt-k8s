cmd-selinuxtempdisable:
  cmd.run:
    - name: |
        setenforce 0 && sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
/etc/sysconfig/selinux:
  file.replace:
    - name: /etc/sysconfig/selinux
    - pattern: SELINUX=enforcing
    - repl: SELINUX=disabled

