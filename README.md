# apfell-crate

:apple: :package: An Ubuntu 18.04 box for Apfell C2 framework development 

Takes care of Apfell dependencies and setup, port forwarding and folder
sharing, using [Virtualbox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).

## Instructions

### Setup

Ensure Virtualbox and Vagrant are installed.

1. `git clone https://github.com/mattreduce/apfell-crate.git`
2. `cd apfell-crate`
3. Run `vagrant up` and wait about 8.5 minutes while everything installs :coffee:
4. SSH access: run `vagrant ssh`
5. Admin UI access: browse to http://localhost:7443 on your host machine
6. Log in as `apfell_admin` with password `apfell_password`
7. Go to Settings and change both username and password
8. Click "Select an operation!" and make "default" the current op, or create an op
9. Go to C2 Profile Management, start the default profile's server
10. Guest VM's `/vagrant` directory is shared with project directory on host

### Administration

* Run Apfell admin scripts _right from your host OS_ like `vagrant ssh -c "sudo ./Apfell/status_check.sh"`
* To suspend the VM, run `vagrant suspend`; run `vagrant resume` to continue in about 30 seconds
* To safely and completely power off, run `vagrant halt`; likewise `vagrant up` will power up
* Run `vagrant destroy` to remove the VM and clean up your work

## Resources

* https://www.vagrantup.com/docs
* https://docs.apfell.net/
