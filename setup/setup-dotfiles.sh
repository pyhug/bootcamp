#!/bin/bash
SRCDIR=/vagrant/setup/dotfiles
DSTDIR=${HOME}

mkdir ${DSTDIR}/self/etc -p
cp ${SRCDIR}/dot_bashrc ${DSTDIR}/.bashrc
cp ${SRCDIR}/dot_self_bashrc ${DSTDIR}/self/etc/dot_bashrc
cp ${SRCDIR}/dot_git-completion.bash ${DSTDIR}/.git-completion.bash
cp ${SRCDIR}/dot_git-prompt.bash ${DSTDIR}/.git-prompt.bash
cp ${SRCDIR}/dot_gvimrc ${DSTDIR}/self/etc/dot_gvimrc
