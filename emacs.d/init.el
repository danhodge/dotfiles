;; http://stackoverflow.com/questions/19524627/where-is-my-emacs-file-on-mac-os-x

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
;;(package-refresh-contents)

;; hide the tool bar
(tool-bar-mode -1)

;; disable audible bell
;;(setq visible-bell 1)

;; turn off alarms completely
(setq ring-bell-function 'ignore)

;; set cwd to project's root
(setq default-directory "~/git")

;; enable ido mode with flex matching
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; show cursor position
(column-number-mode 1)

;; linum settings
(setq linum-format "%d ")

(require 'color-theme)
(color-theme-initialize)
(color-theme-midnight)

;; whitespace settings
(require 'whitespace)

;; trim extraneous whitespace
(require 'ws-trim)
(global-ws-trim-mode t)

;; use basic coloring only in whitespace mode
(setq whitespace-style (quote
  (face spaces tabs newline space-mark tab-mark)))

(set-face-attribute 'whitespace-space nil
		    :weight 'ultra-light
		    :foreground "gray10"
		    :background "black")

(defun dh-prog-mode-delete-trailing-whitespace ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))

(defun dh-prog-hooks ()
  "general programming language settings"
  (whitespace-mode)
  (linum-mode 1)
  (git-gutter+-mode))

(setq dh-prog-mode-hook 'dh-prog-hooks)

(add-hook 'prog-mode-hook (lambda ()
			    (run-hooks 'dh-prog-mode-hook)))
