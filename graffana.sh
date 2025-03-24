wget -q -O gpg.key https://rpm.grafana.com/gpg.key
sudo rpm --import gpg.key

[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

sudo dnf install grafana -y

sudo dnf install grafana-enterprise -y

sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# default user and password
# user : admin
# password : admin 
#port : 3000