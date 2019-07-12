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
;; (set-default-font "monaco-12:normal")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#21252B" "#FF6369" "#63FF63" "#E5C07B" "#00B2FF" "#36F6FF" "#27DBD8" "#ABB2BF"])
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(custom-safe-themes
   (quote
    ("1cf46822907d14fcb273aad743747081c6d9f1395959493cf24c0fbb7c7a31be" "ea71faa917045669be7b7450930b59460e61816a59c1d4026acba806951e194c" "acfac6b14461a344f97fad30e2362c26a3fe56a9f095653832d8fc029cb9d05c" "e396098fd5bef4f0dd6cedd01ea48df1ecb0554d8be0d8a924fb1d926f02f90f" "8e6323697e014f792b6774a721fabee67c4806664202846db26f94acfd0d8b25" "09994fd1df163f01fcba7a274b687a0a0107a67f52b0ba968e550bae86baa081" "7c33a88a4effb129108ad22c22cf409ade3c140a5718d886058d1fec7b48be71" "06d026a887ddea93911e1e3576c3712093aacf12bb64fc06a010e186f2321b7d" "690fc20e0a7ecf9ea166c69ae17ef4da18b4dcd15af74be2d168cdc19eb3001d" "9140f9f8962e1c06e9821a55e20c3793a4282ae0de94fa645ff644d7bdd6933e" "d9822cba5234e6284fb80ad4d84e6c0d8f061949a453cd37e8de5329e0bfe818" "98531067f5d659e2438517d064f3b266e2a7a92ceaf1edb88725e8895808e11f" "7d4dc95606897900c438687879fc01cfdd3704909f80402fe2655569becad40d" "4588e2ea77d79a86b53526a896ce8ceb037980db42da6e0b5d8983a641919d30" "33783ba427ce2e336de385b9f026829bb63cf4e55660ee0a85afe22c641364ff" "9a6059e71040799f15b9e355f59c4bb0e6880a5e5a2a2a609121c6656d9a343b" "7b33755bad466b492f85da7169b2e881ee7376397528b72e9d074b0a9361f16b" "2b3e4edb39563f16b03cff6017dd04f1e348ad37e7e5eb3b160f6459b705935e" "f6cf8d3c9075def2261f2506288925cc5d80d30eb7985d15b022142039e095ef" "adf5275cc3264f0a938d97ded007c82913906fc6cd64458eaae6853f6be287ce" "e27ba8895ec03fb6e76127c5827c6e4b94b7917bcd7bf4cffc2adf3efbd45ecb" "bcc1ca24b07b11381f7e15aa4f7936a3bb9afaa06422912ea4a893a47e93948a" default)))
 '(fci-rule-color "#3E4451")
 '(package-selected-packages
   (quote
    (evil-magit doxymacs editorconfig edit-indirect tide helm-open-github ace-jump-mode dumb-jump switch-window browse-at-remote yaml-mode ws-butler web-mode use-package undo-tree smartparens slime slim-mode scss-mode rvm robe region-bindings-mode rainbow-delimiters projectile-rails pinyin-search phi-search paredit multiple-cursors micgoline markdown-mode magit js2-mode indent-guide helm-themes helm-projectile helm-descbinds haml-mode gruvbox-theme geiser expand-region exec-path-from-shell diff-hl company coffee-mode circadian chicken-scheme cal-china-x bing-dict auto-package-update aggressive-indent)))
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
