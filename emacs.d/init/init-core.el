;;; init-core.el --- core configuration

;;; Commentary:

;; Basic configuration that applies to Emacs as a whole goes here.
;; Note that packages have yet to be loaded at this point.

;;; Code:

; Remove chrome
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

; Disable startup messages
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

; Silence!
(setq ring-bell-function 'ignore)

; Show column number in the mode line
(column-number-mode t)

; store all backup & autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;; Various global text handling defaults

; Use spaces instead of hard tabs
(setq-default indent-tabs-mode nil)
; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
; Insert a trailing newline if not provided
(setq require-final-newline t)

;;; End of text handling defaults

; Install use-packge.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

; This is here to load a file the "remembers" that I told emacs it's ok to evaluate code when setting the theme
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init-core)
;;; init-core.el ends here
