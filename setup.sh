DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade -y

# Ensure VM time is consistently synchronized
sudo timedatectl set-ntp no
sudo apt-get install ntp -y

git clone https://github.com/its-a-feature/Mythic.git
cd Mythic

sudo ./install_docker_ubuntu.sh

sudo -E ./mythic-cli install github https://github.com/MythicC2Profiles/http
sudo -E ./mythic-cli install github https://github.com/MythicAgents/apfell
sudo -E ./mythic-cli install github https://github.com/MythicAgents/poseidon
sudo -E ./mythic-cli mythic start
