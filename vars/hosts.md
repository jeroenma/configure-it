# Example hosts.yaml

```
---
hosts:
  - hostname: localhost
    ipv4: '127.0.0.1'
    ipv6: '::1'
  - hostname: broadcasthost
    ipv4: '255.255.255.255'
  - hostname: nohost
    ipv4: 127.0.0.1
    ssh:
      host: nohost
      disabled: true
      user: <user>
    aliases:
      - noalias
  - hostname: linux
    ipv4: "192.168.0.1"
    ssh:
      host: linux
      user: notroot
```
