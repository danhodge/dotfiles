;;; init-ruby.el --- Ruby configuration

;;; Commentary:

;;; Code:

(use-package rspec-mode
  :ensure t
  :init
  (require 'rspec-mode))

(use-package ruby-tools
  :ensure t)

(provide 'init-ruby)
;;; init-ruby.el ends here
