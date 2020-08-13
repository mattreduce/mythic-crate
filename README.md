# mythic-crate

:crossed_swords: :package: An Ubuntu 18.04 box for Mythic (formerly Apfell) C2 framework development 

Takes care of Mythic dependencies and setup, port forwarding and folder
sharing, using [Virtualbox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).

## Instructions

### Setup

Ensure Virtualbox and Vagrant are installed.

1. `git clone https://github.com/mattreduce/mythic-crate.git`
2. `cd mythic-crate`
3. Run `vagrant up` and wait about 8.5 minutes while everything installs :coffee:
4. SSH access: run `vagrant ssh`
5. Admin UI access: browse to http://localhost:7443 on your host machine
6. Log in as `mythic_admin` with password `mythic_password`
7. Go to Settings and change both username and password
8. Go to C2 Profile Management, start the HTTP C2 Profile server
9.  Guest VM's `/vagrant` directory is shared with project directory on host

### Administration

* Run Mythic admin scripts _right from your host OS_ like `vagrant ssh -c "sudo ./Mythic/status_check.sh"`
* To suspend the VM, run `vagrant suspend`; run `vagrant resume` to continue in about 30 seconds
* To safely and completely power off, run `vagrant halt`; likewise `vagrant up` will power up
* Run `vagrant destroy` to remove the VM and clean up your work

## Resources

* https://www.vagrantup.com/docs
* https://docs.mythic-c2.net/
