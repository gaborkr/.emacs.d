(ido-mode 1)
(ido-everywhere 1)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode)

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(provide 'init-ido)
