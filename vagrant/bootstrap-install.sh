#!/bin/bash

# ubuntu/xenial64 box has non-standard username/password, so work it around by
# resetting the password.  For more information, see
# https://bugs.launchpad.net/cloud-images/+bug/1569237
chpasswd << END
ubuntu:ubuntu
END

timedatectl set-timezone Asia/Taipei

# Bring repository up to date
apt-get update
apt-get dist-upgrade -y

# For fast video.
apt-get install --no-install-recommends -y \
  linux-generic \
  virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
# NOTE: linux-generic contains drm kernel module, which is required for
# vboxvideo kernel module.  Without vboxvideo Ubuntu unity graphics will be
# extremely slow.  See
# http://askubuntu.com/questions/287532/how-do-i-resolve-slow-and-choppy-performance-in-virtualbox.
# "/usr/lib/nux/unity_support_test -p" is a convenient tool to check Ubuntu's
# video acceleration status.

# For desktop environment.
apt-get install --no-install-recommends -y \
  gksu indicator-session network-manager-gnome unity-lens-applications \
  fonts-inconsolata fonts-noto-cjk ubuntu-desktop ubuntu-software \
  gnome-terminal firefox vim-gnome

# For development environment.
apt-get install -y build-essential git

# vim: set et nobomb fenc=utf8 ft=sh ff=unix sw=2 ts=2:
