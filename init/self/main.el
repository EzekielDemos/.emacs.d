(add-hook 'focus-out-hook (lambda ()
                            (cl-letf (((symbol-function 'message) #'format))
                              (save-some-buffers t))))  ; save all buffers when lost focus


(fset 'yes-or-no-p 'y-or-n-p)       ; Use y or n instead of yes or not
(remove-hook 'find-file-hooks 'vc-find-file-hook)


;;(mouse-wheel-mode t) ; Make the mouse wheel scroll Emacs
;;(show-paren-mode 1)                     ; enable ShowParenMode

(desktop-save-mode 1)                   ; set windows size
;;(custom-set-variables
;; '(initial-frame-alist (quote ((fullscreen . maximized))))) ; Start in full-screen mode

(when (fboundp 'winner-mode)
  (winner-mode 1))                      ; key commands ‘C-c left’ and ‘C-c right’
(global-font-lock-mode t)               ; Use colors to highlight commands, etc



(setq inhibit-splash-screen t)     ; remove splash screen and messages
(setq inhibit-startup-message t)
(setq ad-redefinition-action 'accept)


(setq user-full-name "Ezekiel Wang")
(setq user-mail-address "wangnewper@gmail.com")


(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
