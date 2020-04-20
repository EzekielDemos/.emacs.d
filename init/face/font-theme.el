;;; set fonts with check OS type
;;(set-default-font "Ubuntu Mono-12:bold")
;;(set-default-font "Bront-12:bold")
;;(set-default-font "agave-11:book")
;;(set-default-font "Pointfree-10:bold")
;;(set-default-font "monaco-12:bold")
;;(set-default-font "Bront-14:bold")
;;(set-default-font "agave-14:bold")
;;(set-default-font "Bront-12:bold")
;;(set-default-font "agave-11:bold")

;; (cond ((string-equal system-type "windows-nt")
;;        (progn (message "Font set for Windows")))
;;       ((string-equal system-type "darwin")
;;        (progn (set-default-font "agave-14:book")
;;               (set-frame-font "agave-14:book" nil t)))
;;       ((string-equal system-type "gnu/linux")
;;        (progn (set-default-font "Ubuntu Mono-11:bold"))))


;; (use-package gruvbox-theme
;;   :config
;;   ;;(load-theme 'gruvbox t)
;;   ;;(load-theme 'gruvbox-light-soft  t)
;;   ;;(load-theme 'gruvbox-light-medium t)
;;   ;;(load-theme 'gruvbox-light-hard  t)
;;   ;;(load-theme 'gruvbox-dark-soft  t)
;;   ;;(load-theme 'gruvbox-dark-medium t)
;;   ;;(load-theme 'gruvbox-dark-hard  t)
;;   :ensure t :defer)

(use-package atom-one-dark-theme
  :config
  :ensure t :defer)

(use-package afternoon-theme
  :config
  :ensure t :defer)

;;
;;(use-package doom-themes
;;  :init
;;  (require 'doom-themes)
;;  ;; Global settings (defaults)
;;  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;        doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;  :config
;;  ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;;  ;; may have their own settings.
;;  (load-theme 'doom-one t)
;;
;;  ;; Enable flashing mode-line on errors
;;  (doom-themes-visual-bell-config)
;;
;;  ;; Enable custom neotree theme (all-the-icons must be installed!)
;;  (doom-themes-neotree-config)
;;  ;; or for treemacs users
;;  (doom-themes-treemacs-config)
;;
;;  ;; Corrects (and improves) org-mode's native fontification.
;;  (doom-themes-org-config)
;;  :ensure t)
;;


(use-package circadian
  :ensure t
  :config
  ;;(setq circadian-themes '(("8:00" . gruvbox-light-medium)
  ;;                         ("19:00" . gruvbox-dark-medium)))
  (setq calendar-latitude 31.230390)
  (setq calendar-longitude 121.473702)
  ;; (setq circadian-themes '((:sunrise . gruvbox-dark-soft)
  ;;                          (:sunset  . gruvbox-dark-hard)))
  (setq circadian-themes '((:sunrise . xj-sealing)
                           (:sunset  . wombat)))

  (add-hook 'circadian-after-load-theme-hook (lambda ()
                                               (set-frame-font "monaco-12:normal" nil t)
                                               (set-default-font "monaco-12:normal")
                                               ))
  ;; #'(lambda (theme)
  ;;     (cond
  ;;      ((or (string-equal theme "gruvbox-light-soft")
  ;;           (string-equal theme "gruvbox-light-medium")
  ;;           (string-equal theme "gruvbox-light-hard"))
  ;;       (progn
  ;;         (set-face-attribute 'default nil :font "agave-14:bold")
  ;;         (set-frame-font "agave-14:bold" nil t)
  ;;         (set-face-foreground 'indent-guide-face "lightgray")))
  ;;      ((or (string-equal theme "gruvbox-dark-soft")
  ;;           (string-equal theme "gruvbox-dark-medium")
  ;;           (string-equal theme "gruvbox-dark-hard"))
  ;;       (progn
  ;;         (set-face-attribute 'default nil :font "agave-14:book")
  ;;         (set-frame-font "agave-14:book" nil t)
  ;;         (set-face-foreground 'indent-guide-face "dimgray"))))))
  (circadian-setup))
