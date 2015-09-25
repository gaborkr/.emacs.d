
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

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

(require 'functions)
(require 'keys)
(require 'options)
(require 'theme)
(require 'init-ido)
;;(require 'init-elisp)
;;(require 'init-markdown)
;;(require 'init-ess)
;(require 'init-helm)
(require 'init-erlang)
(require 'init-neotree)

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
