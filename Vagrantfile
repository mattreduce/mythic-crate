# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision :shell, path: "./setup.sh"

  # Expose Apfell admin UI on host port 7443
  config.vm.network "forwarded_port", guest: 7443, host: 7443

  # Expose default and HTTP C2 Profiles on host ports 4443 and 8080
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 443, host: 4443
end
