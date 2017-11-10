# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  config.vm.provider :virtualbox do |v|
    v.name = "seedbox.dev"
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "play.yml"
  end
end