#!/bin/bash

anaconda=Miniconda3-latest-Linux-x86_64.sh

cd /vagrant
if [[ ! -f $anaconda ]]; then
  wget --quiet http://repo.continuum.io/miniconda/$anaconda
fi

if [[ `which conda` != "${HOME}/opt/conda3/bin/conda" ]]; then
  bash ./$anaconda -b -p ${HOME}/opt/conda3
  cat >> $HOME/.bashrc << END
# add for anaconda install
PATH=\$HOME/opt/conda3/bin:\$PATH
END
fi

# vim: set et nobomb fenc=utf8 ft=sh ff=unix sw=2 ts=2:
