# mythic-crate

:crossed_swords: :package: An Ubuntu 18.04 box for Mythic C2 framework
development

Takes care of Mythic dependencies and setup, port forwarding and folder
sharing, using [Virtualbox](https://www.virtualbox.org/) and
[Vagrant](https://www.vagrantup.com/).

## Instructions

### Setup

Ensure Virtualbox and Vagrant are installed.

1. `git clone https://github.com/mattreduce/mythic-crate.git`
2. `cd mythic-crate`
3. Run `export VAGRANT_EXPERIMENTAL=disks` to be able to customize the disk
   size of your VM
4. Run `vagrant up` to boot and setup the VM
5. SSH access: run `vagrant ssh`
6. Admin UI access: browse to https://localhost:7443 on your host machine
7. Log in as `mythic_admin` with the password found as `MYTHIC_ADMIN_PASSWORD`
   in the `.env` file inside the Mythic folder (on the VM)
8.  Guest VM's `/vagrant` directory is shared with project directory on host

### Administration

* Run Mythic admin scripts _right from your host OS_ like `vagrant ssh -c
  "sudo -E ./mythic-cli status"`
* To suspend the VM, run `vagrant suspend`; run `vagrant resume` to continue
  in about 30 seconds
* To safely and completely power off, run `vagrant halt`; likewise `vagrant
  up` will power up
* Run `vagrant destroy` to remove the VM and clean up your work

### Ports

Ports exposed on your host system, mapped to their normal Mythic C2 port:

| VM   | Host | Purpose              |
| ---- | ---- | -------------------- |
| 7443 | 7443 | Admin UI             |
| 80   | 8080 | HTTP C2 traffic      |
| 443  | 4443 | HTTPS C2 traffic     |

## Resources

* https://www.vagrantup.com/docs
* https://docs.mythic-c2.net/
