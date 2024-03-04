# Container proxy

The challenge environment in Ret 2 Shell is deployed on Kubernetes, it may contains multiple containers. The k8s pod could run containers together, and share the same host network (for example, the `database` container and the `web` container could reach each other by `localhost:port`).

But WebSocket Reflector X is a controlled proxy that provided by the platform server, which means it can only proxy one port at a time. If you want to expose multiple ports or provide a more complex network environment, you can simply add this container-proxy to your pod, and expose `7866` port to the platform server. The player could access the `7866` port from WebSocket Reflector X, and use this port as a common `HTTP/Socks4/Socks5` mixed-in proxy port in its own computer, and then, it will be able to access the complete network environment of the pod using address `127.0.0.1`.
