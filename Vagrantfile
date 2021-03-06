# -*- mode: ruby -*-
# vim: set et nobomb fenc=utf8 ft=sh ff=unix ft=ruby sw=2 ts=2:
# On my MBA, the provisioning takes:
#   real  8m14.841s
#   user  0m21.183s
#   sys   0m14.131s

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  # ubuntu/xenial64 box has non-standard username/password, see
  # https://bugs.launchpad.net/cloud-images/+bug/1569237
  config.ssh.insert_key = true
  config.ssh.forward_agent = true
  config.ssh.username = "ubuntu"
  if !ENV["KEYAUTH"]
    config.ssh.password = "ubuntu"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = "pybootcamp"
    vb.memory = "2560"
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  # expose for ipython
  config.vm.network "forwarded_port", guest: 8888, host: 8888, host_ip: 'localhost', protocol: 'tcp', auto_correct: true

  config.vm.provision :shell, path: "setup/configure.sh"
  config.vm.provision :shell, path: "setup/install.sh"
  config.vm.provision :shell, path: "setup/setup-dotfiles.sh", privileged: false

end
