;; Save here instead of littering current directory with emacs backup files
 (setq backup-directory-alist
            `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))

(require 'paren)
    (set-face-background 'show-paren-match (face-background 'default))
    (set-face-foreground 'show-paren-match "#def")
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(show-paren-mode 1)

(provide 'options)
