;;; init-ruby.el --- Ruby configuration

;;; Commentary:

;;; Code:

(use-package rspec-mode
  :ensure t
  :init
  (require 'rspec-mode))

(use-package ruby-tools
  :ensure t)

(defun dh/ruby-hooks ()
  "ruby settings"
  (progn
    (define-key ruby-mode-map (kbd "C-c w") 'open-spec-on-left-side)
    )
  )

(add-hook 'ruby-mode-hook #'dh/ruby-hooks)

(provide 'init-ruby)
;;; init-ruby.el ends here
