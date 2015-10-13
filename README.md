
# Emacs Configuration for Software Development

This configuration gives you a simple yet very powerful setup for software development. It provides:
* Neotree for a directory tree browser
* Zenburn color theme
* Smart completion settings
* Projectile

## Install

Install Emacs on your platform, and clone this repo to your home directory. Start Emacs, and it will complain about the unknown packages, which must be installed manually (`C-c C-c M-x package-install`):

* smex
* ido-ubiquitous
* ido-vertical-mode
* helm
* neotree
* projectile

Restart Emacs and enjoy!

## For **Erlang**

EDTS is the successor of Distel, and it works great! You get syntax and syntax error highlighting, code completion popups, go-to-function-definition navigation etc. 

* edts
  * after installing edts, exit Emacs and run `make` in the edts package directory (`~/.emacs.d/elpa/edts*`)

