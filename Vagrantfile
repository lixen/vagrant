# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
    config.vm.box      = 'ubuntu/trusty64'
    config.vm.hostname = 'devubuntu'
    config.vm.network :forwarded_port, guest: 3000, host: 3000
    config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
    config.ssh.forward_agent = true
    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
        v.cpus = 4
    end
end

