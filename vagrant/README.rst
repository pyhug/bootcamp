Provision the VirtualBox virtual machine for pybootcamp.

To build the virtual machine image, the host OS needs VirtualBox (preferably
version 5.1.10 or later) and Vagrant (preferably version 1.9.1 or later)
installed.  Execute the command will make the VM::

  env KEYAUTO=1 vagrant up

Once the VM is built, enable the GUI login by restarting it:: 

  vagrant reload

The username and password for the VM is ubuntu/ubuntu.  After getting into the
VM, set up the desktop by running::

  /vagrant/setup-desktop.sh

Stop the VM::

  vagrant halt

Start a provisioned VM::

  vagrant up

Note, ``KEYAUTO`` was needed for provisioning because ``ubuntu/xenial64`` box
was misconfigured to use a non-standard username/password pair.
