#!/bin/sh
pushd ~/.dotfiles
home-manager switch -f ./users/dingo/home.nix
popd
