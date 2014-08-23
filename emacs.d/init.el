;; http://stackoverflow.com/questions/19524627/where-is-my-emacs-file-on-mac-os-x

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-refresh-contents)

;; show cursor position
(column-number-mode 1)

;; linum settings
(setq linum-format "%d ")

;; whitespace settings
(require 'whitespace)

;; general programming language settings
(defun dh-prog-hooks ()
  (whitespace-mode)
  (delete-trailing-whitespace)
  (linum-mode 1))

(add-hook 'prog-mode-hook 'dh-prog-hooks)
