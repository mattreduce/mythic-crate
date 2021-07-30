DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade -y

# Ensure VM time is consistently synchronized
sudo timedatectl set-ntp no
sudo apt-get install ntp -y

# Install dependencies for Mythic scripting
sudo apt-get install python3-pip -y
pip3 install mythic

# Get the latest Mythic from GitHub
git clone https://github.com/its-a-feature/Mythic.git
cd Mythic

# Install Docker and Docker Compose
sudo ./install_docker_ubuntu.sh

# Install a C2 Profile and some Payloads, start everything up
sudo -E ./mythic-cli install github https://github.com/MythicC2Profiles/http
sudo -E ./mythic-cli install github https://github.com/MythicAgents/apfell
sudo -E ./mythic-cli install github https://github.com/MythicAgents/poseidon
sudo -E ./mythic-cli mythic start
