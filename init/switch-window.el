(require 'switch-window)


(global-set-key (kbd "C-x o") 'switch-window)

;; I want to select a window with "a-z" instead of "1-9".
(setq switch-window-shortcut-style 'qwerty)

;; I want to hide window label when window's number < 3
(setq switch-window-threshold 2)

;; I want to select minibuffer with label "z".
(setq switch-window-minibuffer-shortcut ?z)
