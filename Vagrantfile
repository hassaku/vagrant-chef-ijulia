# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "julia-vagrant"
  config.vm.box = "opscode_ubuntu-13.04_chef-provisionerless.box"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-13.04_chef-provisionerless.box"
  config.vm.network :forwarded_port, guest: 8888, host: 8888

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
    vb.name = "julia-vagrant"
  end
end
