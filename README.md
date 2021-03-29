# dotfiles

This is a collection of dotfiles that I personally use.

## Installation

### Base

To set up most of it, you just need to run this script.
```bash
git clone https://github.com/MarcelCoding/dotfiles.git ~/dotfiles && sh ~/dotfiles/install.sh
# or
git clone git@github.com:MarcelCoding/dotfiles.git ~/dotfiles && sh ~/dotfiles/install.sh
```
**Please review every script from the Internet before executing it!**

Some other steps you have to do manually, e.g. `bashrc`.

### bashrc

Replace the shell style with the following:
```bash
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]: [\[\033[01;34m\]\w\[\033[00m\]] \$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h: [\w] \$ '
fi
```

## Upgrading

To upgrade, you just need to pull all the changes from git and run the installation script again.
```bash
sh -c "cd ~/dotfiles && git pull && sh install.sh"
```

You will have to perform all manual settings again. If they have not changed, you do not need to do them again.
