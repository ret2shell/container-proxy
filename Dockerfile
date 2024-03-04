FROM superng6/singbox:latest

COPY config.json /etc/sing-box/config.json

CMD ["/usr/bin/sing-box", "run", "-D", "/etc/sing-box"]
