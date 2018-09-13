;;; init.el -- Custom configuration

;;; Commentary:

;; All actual configuration lives in ~/.emacs.d/init/

;;; Code:

(require 'package)

(setq package-archives
  '(("gnu" . "https://elpa.gnu.org/packages/")
    ("melpa-stable" . "https://stable.melpa.org/packages/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init/")

; Core config.
(require 'init-core)

; Additional config
(require 'init-theme)

(provide 'init)
;;; init.el ends here
