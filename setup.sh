git clone https://github.com/its-a-feature/Mythic.git
cd Mythic
git checkout -t origin/2.2-updates

sudo ./install_docker_ubuntu.sh

sudo ./install_agent_from_github.sh https://github.com/MythicC2Profiles/http
sudo ./install_agent_from_github.sh https://github.com/MythicAgents/apfell
sudo ./install_agent_from_github.sh https://github.com/MythicAgents/poseidon

sudo ./start_mythic.sh
