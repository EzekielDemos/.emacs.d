(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

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
  (setq js2-strict-missing-semi-warning nil)
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)
  :ensure t)

;;; rjsx-mode extends the parser in js2-mode to support the full JSX syntax.
(use-package rjsx-mode
  :init
  (add-to-list 'auto-mode-alist '("src\\/**\\/*\\/.*\\.js\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . rjsx-mode))
  (add-hook 'rjsx-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
                (setup-tide-mode))))
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

;;; typescript mode
(use-package tide
  :ensure t
  :init
  (setq tide-format-options '(:indentSize 2))
  (setq typescript-indent-level 2)
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (typescript-mode . prettier-js-mode)))

(use-package js-doc)
