# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.disk :disk, size: "30GB", primary: true

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end

  config.vm.provision :shell, path: "./setup.sh"

  # Expose Mythic admin UI, documentation, etc on port 7777
  config.vm.network "forwarded_port", guest: 7443, host: 7777

  # Expose HTTP C2 Profile on host ports 4443 and 8080
  config.vm.network "forwarded_port", guest: 80, host: 8888
  config.vm.network "forwarded_port", guest: 443, host: 4443
end
