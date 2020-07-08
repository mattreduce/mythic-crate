# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision :shell, path: "./setup.sh"

  # Expose Apfell admin UI on port 8888
  config.vm.network "forwarded_port", guest: 80, host: 8888

  # Expose default C2 Profile on port 9000
  config.vm.network "forwarded_port", guest: 9000, host: 9000
end
