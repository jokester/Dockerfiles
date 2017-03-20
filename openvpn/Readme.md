openvpn

---

minimalist openvpn with alpine:3.5

**does not** contain config files for openvpn

Usage:

    docker run -d -v /var/openvpn-server:/openvpn -p :1194:1194 --cap-add=NET_ADMIN --name=openvpn jokester/openvpn

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/openvpn)

