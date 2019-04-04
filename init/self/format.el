;; whitespace & tab
(setq-default indent-tabs-mode nil)
;;(setq-default show-trailing-whitespace t)
(add-hook 'ruby-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'lisp-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'emacs-lisp-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'common-lisp-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'scheme-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'js2-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'web-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'scss-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'haml-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'slim-mode-hook (lambda () (setq show-trailing-whitespace t)))
(add-hook 'markdown-mode-hook (lambda () (setq show-trailing-whitespace t)))

(setq require-final-newline 1)          ;Always end a file with a newline
(setq next-line-add-newlines nil)       ;Stop emacs from arbitrarily adding lines to the end of a file when the cursor is moved past the end of it

(setq-default line-spacing 0) ; set line spacing


;; prevent emacs from adding coding information in the first line
(setq ruby-insert-encoding-magic-comment nil)
