# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "binbashing/ubuntu16-04-x64-nagios-4"
  config.vm.box_version = "1.0"# Disable automatic box update checking. If you disable this, then
  config.vm.network "private_network", ip: "192.168.33.10"

   config.vm.provider "virtualbox" do |vb|
     vb.memory = "512"
  end
  config.vm.provision :shell, path: "autostart.sh", run: "always"

 end
