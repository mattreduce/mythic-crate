# apfell-crate

:apple: :package: An Ubuntu 18.04 box for Apfell C2 framework development 

Takes care of Apfell dependencies and setup, port forwarding and folder
sharing, using [Virtualbox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).

## Setup

Ensure Virtualbox and Vagrant are installed.

1. git clone https://github.com/mattreduce/apfell-crate.git
2. cd apfell-crate
3. Run `vagrant up`
4. Run `vagrant ssh`
5. Run `cd Apfell` then `sudo ./start_apfell.sh` on the VM
6. Browse to http://localhost:8888 on your host machine
7. Log in as `apfell_admin` with password `apfell_password`
8. Go to Settings and change both username and password
9. Click "Select an operation!" and make "default" the current op, or create an op
10. Go to C2 Profile Management, start the default profile's server (maps to port 9000)
11. Guest VM's `/vagrant` directory is shared with project directory on host

## Resources

* https://www.vagrantup.com/docs
* https://docs.apfell.net/
