(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(add-to-list 'package-archives '("elpa-popkit" . "http://elpa.popkit.org/"))
;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)


;;; load init files
(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/init/self")
(load-directory "~/.emacs.d/init/projectile")
(load-directory "~/.emacs.d/init/codmode")
(load-directory "~/.emacs.d/init/scheme")
(load-directory "~/.emacs.d/init/format")
(load-directory "~/.emacs.d/init/company")
(load-directory "~/.emacs.d/init/manage")
(load-directory "~/.emacs.d/init/productivity")
(load-directory "~/.emacs.d/init/tool")
(load-directory "~/.emacs.d/init")
(load-directory "~/.emacs.d/init/face")
(set-default-font "monaco-12:normal")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#21252B" "#E06C75" "#98C379" "#E5C07B" "#61AFEF" "#C678DD" "#56B6C2" "#ABB2BF"])
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(custom-safe-themes
   (quote
    ("2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "aefbe9af100c08d659fd0658ac9722dca625fe5a82b23b09e1dedb3980eff965" "adf5275cc3264f0a938d97ded007c82913906fc6cd64458eaae6853f6be287ce" "e27ba8895ec03fb6e76127c5827c6e4b94b7917bcd7bf4cffc2adf3efbd45ecb" "bcc1ca24b07b11381f7e15aa4f7936a3bb9afaa06422912ea4a893a47e93948a" default)))
 '(fci-rule-color "#3E4451")
 '(package-selected-packages
   (quote
    (tide helm-open-github ace-jump-mode dumb-jump switch-window browse-at-remote yaml-mode ws-butler web-mode use-package undo-tree smartparens slime slim-mode scss-mode rvm robe region-bindings-mode rainbow-delimiters projectile-rails pinyin-search phi-search paredit multiple-cursors micgoline markdown-mode magit js2-mode indent-guide helm-themes helm-projectile helm-descbinds haml-mode gruvbox-theme geiser expand-region exec-path-from-shell diff-hl company coffee-mode circadian chicken-scheme cal-china-x bing-dict auto-package-update aggressive-indent)))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#458588"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#b16286"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#8ec07c"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#d65d0e"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark cyan"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "DeepPink2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "forest green"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark red")))))
