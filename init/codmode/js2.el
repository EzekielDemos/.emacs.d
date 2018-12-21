(use-package js2-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-hook 'js-mode-hook 'js2-minor-mode)
  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-jsx-mode))
  (add-hook 'js2-mode-hook (lambda ()
                             (setq js2-basic-offset 2)
                             (setq js2-mode-assume-strict t)))
  :config
  :ensure t)

;;; rjsx-mode extends the parser in js2-mode to support the full JSX syntax.
(use-package rjsx-mode
  :init
  (add-to-list 'auto-mode-alist '("src\\/**\\/*\\/.*\\.js\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
  :ensure t)

(use-package prettier-js
  :init
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  :ensure t)

;;; coffeescript mode
(use-package coffee-mode
  :init (custom-set-variables '(coffee-tab-width 2))
  :ensure t)

;;; skewer-mode is a minor-mode that allows Emacs to send JavaScript, CSS and HTML to an active browser window
(use-package skewer-mode
  :init
  (add-hook 'js2-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode)
  (setq httpd-port 8081)
  :config
  :ensure t)
