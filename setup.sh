git clone https://github.com/its-a-feature/Mythic.git
cd Mythic
sudo ./install_docker_ubuntu.sh

cp /vagrant/config.json mythic-docker/config.json
sudo ./start_mythic.sh
