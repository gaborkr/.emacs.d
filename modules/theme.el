;; ========== Look & Feel =========

(setq inhibit-startup-screen 1)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

;; Disable toolbar
(tool-bar-mode -1)

(blink-cursor-mode 1)

(tool-bar-mode 0)
(menu-bar-mode 1)

;; window size
(setq initial-frame-alist '((top . 0) (left . 0) (width . 200) (height . 50)))

(provide 'theme)

