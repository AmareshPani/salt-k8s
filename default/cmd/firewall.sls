cmd-firewall:
  cmd.run:
    - name: |
        systemctl disable firewalld
        systemctl stop firewalld
