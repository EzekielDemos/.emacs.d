;; chicken-install slime
;; git clone https://github.com/nickg/swank-chicken
;; install chicken doc following this: http://wiki.call-cc.org/eggref/4/chicken-doc
(use-package slime
  :init
  (require 'slime)
  (slime-setup '(slime-fancy slime-banner))
  (add-to-list 'load-path "/usr/local/Cellar/chicken/4.13.0/lib/chicken/8")
  (autoload 'chicken-slime "chicken-slime" "SWANK backend for Chicken" t)
  ;; TODO set dynamic path
  (setq swank-chicken-path "/Users/zeke/swank-chicken/swank-chicken.scm")
  (setq slime-csi-path "/usr/local/bin/csi")
  (add-hook 'scheme-mode-hook (lambda () (slime-mode t)))
  :ensure t)


(use-package chicken-scheme
  :init
  (require 'chicken-scheme)
  (define-key scheme-mode-map (kbd "C-?") 'chicken-show-help)
  (add-hook 'scheme-mode-hook 'setup-chicken-scheme)
  (add-hook 'scheme-mode-hook 'rainbow-delimiters-mode)
  :ensure t)





(if (file-exists-p "/usr/bin/sbcl")
    (setq inferior-lisp-program "/usr/bin/sbcl"))
(if (file-exists-p "/usr/local/bin/sbcl")
    (setq inferior-lisp-program "/usr/local/bin/sbcl"))
;;
;;
;;;;roswell slime
;;(if (and (file-exists-p "/usr/bin/sbcl") (file-exists-p "~/.roswell/helper.el"))
;;  (load (expand-file-name "~/.roswell/helper.el")))
;;
;;(setq slime-contribs '(slime-fancy))
;;(require 'slime)
;;(slime-setup '(slime-fancy slime-asdf slime-banner))
;;
;;
;;(add-hook 'slime-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
;;
;;(add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)
;;
;;(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
;;          ;; Stop SLIME's REPL from grabbing DEL,
;;          ;; which is annoying when backspacing over a '('
;;(defun override-slime-repl-bindings-with-paredit ()
;;(define-key slime-repl-mode-map
;;  (read-kbd-macro paredit-backward-delete-key) nil))
;;  (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)
;;
