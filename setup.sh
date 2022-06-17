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
git clone https://github.com/MythicC2Profiles/http.git

cd http
git checkout c139215e052fb3326ec0c75e1f6d7619ab355138

cd ../Mythic
git checkout v2.2.14

# Install Docker and Docker Compose
sudo ./install_docker_ubuntu.sh

# Install a C2 Profile and some Payloads, start everything up
sudo ./mythic-cli install folder ../http/
sudo -E ./mythic-cli install github https://github.com/MythicAgents/venus
sudo -E ./mythic-cli mythic start
