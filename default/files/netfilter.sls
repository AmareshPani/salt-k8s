/etc/sysctl.conf:
  file.append:
    - name: /etc/sysctl.conf
    - text:
      - net.bridge.bridge-nf-call-ip6tables = 1
      - net.bridge.bridge-nf-call-iptables = 1
cmd-netfilter:
  cmd.run:
    - name: |
        modprobe br_netfilter
        echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
        sysctl --system
