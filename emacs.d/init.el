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

(require 'init-browse-kill-ring)
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-source-code)
(require 'init-ruby)

(provide 'init)
;;; init.el ends here
