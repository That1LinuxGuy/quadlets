# for additional documentation visit https://docs.podman.io/en/latest/Search.html

[Unit]
Description=Describe the Network
Before=basic.container

[Network]
Subnet=10.10.0.0/24
Gateway=10.10.0.1
IPRange=10.10.0.0/28
DNS=1.1.1.1  

[Service]  
Restart=always

[Install]
WantedBy=default.target
