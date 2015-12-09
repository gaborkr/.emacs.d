
;; ============ Key Bindings ===========

(global-set-key (kbd "C-x c") 'comment-region)
(global-set-key (kbd "C-x x") 'uncomment-region)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

;; window tabbing
(global-set-key [C-tab] 'other-window)
(global-set-key [C-S-iso-lefttab] 'previous-multiframe-window)

;; match parenthesis

(global-set-key "%" 'match-paren)

(defun match-paren (arg)
    "Go to the matching paren if on a paren; otherwise insert %."
      (interactive "p")
        (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	              ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
		              (t (self-insert-command (or arg 1)))))


;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

;; zoom window functionality - yay!
(define-key global-map (kbd "C-|") 'toggle-windows-split)

;; delete line does not affect the kill ring
(defun delete-line ()
  (interactive)
  (delete-region
   (progn (beginning-of-line 1) (point))
   (progn (end-of-line 1) (point)))
  (delete-char 1))

(global-set-key (kbd "<C-S-backspace>") 'delete-line)

(provide 'keys)

