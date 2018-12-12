(use-package ace-jump-mode
  :init (defvar ace-jump-command-map
          (let ((map (make-sparse-keymap)))
            (define-key map (kbd "w") #'ace-jump-word-mode)
            (define-key map (kbd "c") #'ace-jump-char-mode)
            (define-key map (kbd "l") #'ace-jump-line-mode)
            map)
          "Keymap for ace-jump-mode")
  :bind-keymap (("C-c j" . ace-jump-command-map))
  :config (setq ace-jump-face-background "#ffff00")
  :ensure)
