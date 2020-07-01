(use-package go-mode
  :init
  (add-to-list 'load-path "/place/where/you/put/it/")
  (autoload 'go-mode "go-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode)))
