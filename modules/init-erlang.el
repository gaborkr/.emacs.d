(add-hook 'after-init-hook 'my-after-init-hook)
(defun my-after-init-hook ()
    (require 'edts-start))

(require 'erlang-flymake)

(provide 'init-erlang)

