
# My Little Emacs Config

...which I put together using various other people's config...

This configuration provides among others:
* Neotree for a directory tree browser
* Zenburn color theme
* Smart completion settings
* Projectile

## Install

Install Emacs on your platform, and clone this repo to your home directory. Start Emacs, and it should install all the required packages automatically (if not, do the install by hand: `C-c C-c M-x package-install`)


## For **Erlang**

EDTS is the successor of Distel, and sometimes it even works! You get syntax and syntax error highlighting, code completion popups, go-to-function-definition navigation etc. 

* edts
  * after installing edts, exit Emacs and run `make` in the edts package directory (`~/.emacs.d/elpa/edts*`)

Top tip: create a .edts file in your project root, and add something like:

```erlang
:name "APP_app"
:node-name "APP_edts"
:lib-dirs '("lib" "deps")
:erlang-cookie "APP"
:start-command "erl OPTIONS -s APP -sname APP_edts"
```

where APP is your app name. Edts will start a new Erlang node with _edts, so it will not collide with your original app that you might want to run on its own. The start command should be the same the way you start your application normally.

## For **Clojure**

The config file comes straight from [Clojure the Brave](https://www.nostarch.com/clojure) - cheers!

Paredit mode is enabled by default. C-left/C-right will be disabled for paredit because I'm addicted to using these keys for moving across words...