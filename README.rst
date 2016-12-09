================
Python Boot Camp
================

The purpose of this boot camp is to promote the Python language and community
around Hsinchu area.

The target audience are the university freshmen student who have no experiences
in programming but are interested in learning.  High schoolers are good too.
The location will be in NCTU 330.

The boot camp will use 3 hours in the morning on Saturday and will finish
before lunch.

Preparatory boot camps may be held at PyHUG meetup.  In this case the boot camp
will be promoted for non-students (students are welcome, too).

Agenda
======

1. Virtual Box + Ubuntu (prepare local network VM image)
2. Python history (Robert doesn't like it)
3. Famous application
4. Community
5. Command line
6. apt-get install Python or anaconda or pre-install in image?
7. Write a one-liner from command line.
8. Hand input, no copy and paste.
9. Choose and train for an editor.
10. Turn the one-liner into a program.
11. Get 「大平台」 from local data.
12. Get 「大平台」 from remote URL.

Provision Virtual Machine
=========================

Provision the VirtualBox virtual machine for pybootcamp.

To build the virtual machine image, the host OS needs VirtualBox (preferably
version 5.1.10 or later) and Vagrant (preferably version 1.9.1 or later)
installed.  Execute the command will make the VM::

  env KEYAUTH=1 vagrant up

Once the VM is built, enable the GUI login by restarting it:: 

  vagrant reload

The username and password for the VM is ubuntu/ubuntu.  After getting into the
VM, set up the desktop by running::

  /vagrant/setup-desktop.sh

Stop the VM::

  vagrant halt

Start a provisioned VM::

  vagrant up

Note, ``KEYAUTH`` was needed for provisioning because ``ubuntu/xenial64`` box
was misconfigured to use a non-standard username/password pair.
