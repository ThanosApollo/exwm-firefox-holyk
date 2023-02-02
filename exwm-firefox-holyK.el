;;; exwm-holyK-firefox --- Emacs keybinding implemention of exwm-firefox-core
;; Author: Thanos Apollo
;; URL: --
;; Version: 1.0
;; Package-Requires: ((emacs "24.4") (exwm "0.16") (exwm-firefox-core "1.0"))
;; Keywords: extensions

;;; Commentary:

;; This package implements exwm-firefox-core to allow navigation and editing in firefox
;; using default-like Emacs keybindings

;;; Code:

(require 'exwm-firefox-core)
(require 'exwm)

(defvar exwm-firefox-holyK-mode-map
  (let
      ((map (make-sparse-keymap)))
    (define-key map (kbd "C-n") 'exwm-firefox-core-down)
    (define-key map (kbd "C-p") 'exwm-firefox-core-up)
    (define-key map (kbd "C-f") 'exwm-firefox-core-right)
    (define-key map (kbd "C-b") 'exwm-firefox-core-left)
    (define-key map (kbd "C-y") 'exwm-firefox-core-paste)
    (define-key map (kbd "C-s") 'exwm-firefox-core-quick-find)
    (define-key map (kbd "M-f") 'exwm-firefox-core-tab-next)
    (define-key map (kbd "M-b") 'exwm-firefox-core-tab-previous)
    (define-key map (kbd "C-c C-c") 'exwm-firefox-core-copy)
    (define-key map (kbd "C-c n") 'exwm-firefox-core-tab-new)
    (define-key map (kbd "C-c d") 'exwm-firefox-core-tab-close)
    (define-key map (kbd "C-c b") 'exwm-firefox-core-history-back)
    (define-key map (kbd "C-c f") 'exwm-firefox-core-history-forward)
    (define-key map (kbd "C-c C-d") 'exwm-firefox-core-window-close)
    (define-key map (kbd "C-c C-n") 'exwm-firefox-core-window-new)
    (define-key map (kbd "C-c C-p") 'exwm-firefox-core-window-new-private)
    (define-key map (kbd "C-l") 'exwm-firefox-core-focus-search-bar)
    (define-key map (kbd "C-/") 'exwm-firefox-core-undo)
    (define-key map (kbd "M-<") 'exwm-firefox-core-top)
    (define-key map (kbd "M->") 'exwm-firefox-core-bottom)
    (define-key map (kbd "C-c C-b") 'exwm-firefox-core-bookmark-new)
    (define-key map (kbd "C-c r") 'exwm-firefox-core-reload)
    (define-key map (kbd "C-c C-r") 'exwm-firefox-core-reload-override-cache)
    (define-key map (kbd "C-c B") 'exwm-firefox-core-bookmark-menu)
    (define-key map (kbd "C-c C-b") 'exwm-firefox-core-bookmark-new)
    (define-key map (kbd "C-c C-t m") 'exwm-firefox-core-tab-mute)
    (define-key map (kbd "C-c C-t l") 'exwm-firefox-core-tab-last)    
    (define-key map (kbd "C-c C-t f") 'exwm-firefox-core-tab-first)
    (define-key map (kbd "C-d") 'exwm-firefox-core-cut)
    (define-key map (kbd "C-c C-o f") 'exwm-firefox-core-open-file)
    (define-key map (kbd "C-c C-q") 'exwm-firefox-core-quit)
    (define-key map (kbd "C-c C-m r") 'exwm-firefox-core-reader-mode)
    (define-key map (kbd "C-c C-s") 'exwm-firefox-core-save-page)
    map))

(defvar exwm-firefox-class-names
  '("firefox-default" "firefox" "Firefox"
    "Nightly" "Icecat" "icecat-default"
    "icecat" "Iceweasel")
  "The class name used for detecting if current buffer is a firefox browser.")

(defun holyK-activate-if-firefox ()
  "Activates firefox-holyK-mode mode when buffer is firefox.
Firefox variant can be assigned in 'exwm-firefox-class-names`"
  (interactive)
  (when (member exwm-class-name exwm-firefox-class-names)
    (exwm-firefox-holyK-mode 1)
    ))

(define-minor-mode exwm-firefox-holyK-mode
  "Get Emacs keybindings in Firefox with EXWM."
  :lighter " Firefox/EXWM"
  (if exwm-firefox-holyK-mode
      (add-hook 'buffer-list-update-hook 'holyK-activate-if-firefox)
    (remove-hook 'buffer-list-update-hook 'holyK-activate-if-firefox)))



(provide 'exwm-firefox-holyK)

;;; exwm-firefox-holyK.el ends here.


