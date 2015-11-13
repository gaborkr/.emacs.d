(defun shell-here ()
    "Opens up a new shell in the directory associated with the
  current buffer's file. The eshell is renamed to match that
  directory to make multiple eshell windows easier."
    (interactive)
      (let* ((parent (if (buffer-file-name)
		                            (file-name-directory (buffer-file-name))
					                       default-directory))
	              (height (/ (window-total-height) 3))
		               (name   (car (last (split-string parent "/" t)))))
	    (split-window-vertically (- height))
	        (other-window 1)
		    (shell "new")
		        (rename-buffer (concat "*shell: " name "*"))

			    (insert (concat "ls"))
			        (eshell-send-input)))

(global-set-key (kbd "C-!") 'shell-here)


(defun xml-format ()
    (interactive)
      (save-excursion
	    (shell-command-on-region (mark) (point) "xmllint --format -" (buffer-name) t)
	        )
        )


(defun json-format ()
    (interactive)
      (save-excursion
	    (shell-command-on-region (mark) (point) "python -m json.tool" (buffer-name) t)
	        )
        )

;; Toggle between split windows and a single window
(defun toggle-windows-split()
  "Switch back and forth between one window and whatever split of windows we might have in the frame. The idea is to maximize the current buffer, while being able to go back to the previous split of windows in the frame simply by calling this command again."
  (interactive)
  (if (not (window-minibuffer-p (selected-window)))
      (progn
        (if (< 2 (count-windows))
            (progn
              (window-configuration-to-register ?u)
              (delete-other-windows))
          (jump-to-register ?u))))
  (my-iswitchb-close))

;; Note: you may also need to define the my-iswitchb-close function 
;; created by Ignacio as well: http://emacswiki.org/emacs/IgnacioPazPosse
(defun my-iswitchb-close()
 "Open iswitchb or, if in minibuffer go to next match. Handy way to cycle through the ring."
 (interactive)
 (if (window-minibuffer-p (selected-window))
     (keyboard-escape-quit)))

(provide 'functions)
