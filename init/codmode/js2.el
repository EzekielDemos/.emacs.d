(use-package js2-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-hook 'js-mode-hook 'js2-minor-mode)
  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-jsx-mode))
  (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
  (add-hook 'js2-mode-hook (lambda ()
                             (setq js2-basic-offset 2)
                             (setq js2-mode-assume-strict true)))
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
  (eval-after-load 'js2-jsx-mode
    '(progn
       (add-hook 'web-mode-hook #'add-node-modules-path)
       (add-hook 'web-mode-hook #'prettier-js-mode)))
  :config
  :ensure t)



;;; coffeescript mode
(use-package coffee-mode
  :ensure t)

;;; rjsx-mode
(use-package rjsx-mode
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

(custom-set-variables '(coffee-tab-width 2))
