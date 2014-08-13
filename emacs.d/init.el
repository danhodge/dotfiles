;; http://stackoverflow.com/questions/19524627/where-is-my-emacs-file-on-mac-os-x

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-refresh-contents)

;; show cursor position
(column-number-mode 1)

