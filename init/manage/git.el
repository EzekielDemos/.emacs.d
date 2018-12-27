(use-package magit
  :bind (("C-x g" . magit-status))
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :ensure t)

(use-package browse-at-remote
  :bind (("C-c o g" . browse-at-remote))
  :ensure t)

(use-package github-stars
  :ensure t)

(use-package helm-open-github
  :bind (("C-c o f" . helm-open-github-from-file)
         ("C-c o c" . helm-open-github-from-commit)
         ("C-c o i" . helm-open-github-from-issues)
         ("C-c o p" . helm-open-github-from-pull-requests))
  :ensure t)
