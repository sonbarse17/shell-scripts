sudo curl -L -o /usr/local/lib/docker/cli-plugins/docker-scout_1.17.0_linux_amd64.tar.gz https://github.com/docker/scout-cli/releases/download/v1.17.0/docker-scout_1.17.0_linux_amd64.tar.gz

ls -lh /usr/local/lib/docker/cli-plugins/docker-scout_1.17.0_linux_amd64.tar.gz

sudo tar -xzvf /usr/local/lib/docker/cli-plugins/docker-scout_1.17.0_linux_amd64.tar.gz -C /usr/local/lib/docker/cli-plugins/

sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-scout

docker scout version
