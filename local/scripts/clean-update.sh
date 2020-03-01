#!/bin/sh
# clean Debian system & upgrade the current distribution

sudo apt autoclean  &&
sudo apt autoremove --purge &&
sudo -x -c mx-cleanup &
sudo apt update &&
sudo apt upgrade
