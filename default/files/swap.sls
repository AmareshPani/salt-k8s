/etc/fstab:
  file.comment:
    - name: /etc/fstab
    - regex: ^/dev/mapper/centos-swap
cmd-swapoff:
  cmd.run:
    - name: |
        swapoff -a
