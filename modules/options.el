;; Save here instead of littering current directory with emacs backup files
(setq backup-directory-alist
            `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-default nil)

(setq create-lockfiles nil)

(global-linum-mode)

(require 'paren)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-foreground 'show-paren-match "#def")
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(show-paren-mode 1)

(global-auto-revert-mode 1)

(setq-default indent-tabs-mode nil)

(provide 'options)
