;;; magit
(use-package magit
  :ensure t)

(setq magit-last-seen-setup-instructions "1.4.0")


(global-set-key (kbd "C-x g") 'magit-status)