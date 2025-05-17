[Unit]
Description=Describe the Container

[Container]
Images=DNS/containername:latest
AutoUpdate=registry
ContainerName=name
UserNS=keep-id
Volume=/source:/dest
PublishPort=sourceport:containerport
#AddDevice=/dev/foo
#EnvironmentFile=/tmp/env
#StartWithPod=true

[Service]
Restart=always

[Install]
WantedBy=default.target
