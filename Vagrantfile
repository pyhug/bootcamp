# -*- mode: ruby -*-
# vim: set et nobomb fenc=utf8 ft=sh ff=unix ft=ruby sw=2 ts=2:

# On my MBA, the provisioning takes:
#   real  13m58.078s
#   user  0m10.504s
#   sys   0m4.083s

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
    vb.customize ["modifyvm", :id, "--vram", "64"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  # expose for ipython
  config.vm.network "forwarded_port", guest: 8888, host: 8888, host_ip: 'localhost', protocol: 'tcp', auto_correct: true

  config.vm.provision :shell, path: "setup/bootstrap-install.sh"
  config.vm.provision :shell, path: "setup/bootstrap-anaconda.sh", privileged: false
  config.vm.provision :shell, path: "setup/setup-dotfiles.sh", privileged: false
  config.vm.provision :shell, path: "setup/setup-desktop.sh", privileged: false

end
