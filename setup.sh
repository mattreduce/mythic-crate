git clone https://github.com/its-a-feature/Mythic.git
cd Mythic
git checkout -t origin/2.2-updates

sudo ./install_docker_ubuntu.sh

sudo -E ./mythic-cli install github https://github.com/MythicC2Profiles/http.git
sudo -E ./mythic-cli install github https://github.com/MythicAgents/apfell -f
sudo -E ./mythic-cli install github https://github.com/MythicAgents/poseidon -f
sudo -E ./mythic-cli mythic start
