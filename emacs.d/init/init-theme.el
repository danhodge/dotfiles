;;; init-theme.el --- theme configuration

;;; Code:

(use-package solarized
  :ensure solarized-theme
  :defer t
  :init)

(load-theme 'solarized-dark)

(provide 'init-theme)
;;; init-theme.el ends here
