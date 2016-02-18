
;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Running as user %s .." current-user)

(defvar root-dir "~/.emacs.d/")

(defvar modules-dir (expand-file-name  "modules/" root-dir)
  "This directory houses all of the user modules.")

(message "Added %s to load-path" modules-dir)

(add-to-list 'load-path modules-dir)

(defvar my-packages
  '(
    smex
    ido-ubiquitous
    ido-vertical-mode
    helm
    neotree
    projectile
    edts
    paredit
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    tagedit
    company
    ensime
    markdown-mode
))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'functions)
(require 'keys)
(require 'options)
(require 'theme)
(require 'init-ido)
(require 'init-paredit)
(require 'init-clojure)
(require 'init-projectile)
(require 'init-erlang)
(require 'init-neotree)
(require 'init-js)
(require 'init-scala)

(message "Hi!")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("94dfc2b6a8ac8b651f9aab66bc83bd5601f47166d86ee6d2d32de7dfb881185c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
