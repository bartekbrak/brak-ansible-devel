# Fork prolog
This is a fork and merge of work of two excellent people:
- Emanuele Palazzetti - https://github.com/palazzem/ansible-devel
- Patrick Coffey - https://github.com/patrickocoffeyo/ubuntu-dev
with additions and modifications to suit my usecase. I have learned a lot from these two repositories. Thanks a lot.

The repository is currently all over tha place. This is a WIP.

Please see their repositories for their READMEs and full licensing informations. The two repositories used different but not exclusive licensing models, as least not exclusive for my use case: BSD-2 and MIT. I consider this work to be under MIT license. Please, write to me if you feel this is wrong.

# Brak Ansible devel

This set of roles is designed to give you a clean development environment for Ubuntu 14.04.

# Instalation

```
bash <(curl -L https://raw.githubusercontent.com/bartekbrak/brak-ansible-devel/master/bin/install.sh)
```
or:

```
ansible-playbook orchestrate.yml -e "fullname='XXX' email='XXX@gXXX.com' username=XXX"
```

mysql_secure_installation

# TODO
- reorganize files, come up with meaningful categories and filenames, split extra packages from essential and so on
- Add 'when' clauses where necessary
- Implement questions: https://github.com/zenzire/ansible-bootstrap-ubuntu/blob/master/user.yml
- get unnecessary "changed" to 0 (7 now)
- add steam
- currently the whole thing is broken as it assumes passwordless sudo
- add dropbox, copy
- sxhkd and chrome have chnaged status always
- bash-git-prompt
- wmctrl (add to cycler too)
- apt-file
- fdupes
- add neovim https://github.com/neovim/neovim/wiki/Installing-Neovim



More credits:
https://github.com/jdauphant/ansible-role-sublimetext
https://github.com/Oefenweb/ansible-pycharm
https://github.com/knopki/ansible-locale
