## for additional documentation visit https://docs.podman.io/en/latest/Search.html

[Unit]
Description=Describe the Container
#Requires=basic.pod or basic.netowrk
#After=basic.container or basic.network
#Before=basic.container

[Container]
Images=DNS/containername:latest
AutoUpdate=registry
UserNS=keep-id
Volume=/host/source:/container/dest
PublishPort=sourceport:containerport
#AddDevice=/dev/dri
#EnvironmentFile=/tmp/env
#StartWithPod=true

#[Network]
#Host=true

[Service]
Restart=unless-stopped

[Install]
WantedBy=default.target
