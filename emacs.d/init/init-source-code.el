;;; init-source-code.el --- Configuration for working with source code

;;; Commentary:

;;; Code:

(use-package git-gutter+
  :ensure t
  :init (global-git-gutter+-mode)
  :diminish (git-gutter+-mode . "gg"))

(use-package fill-column-indicator
  :ensure t
  :init
  (setq fci-rule-column 100))


(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config))

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.5)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 2)
  (setq company-tooltip-flip-when-above t)
  (global-company-mode))

(defun dh/prog-hooks ()
  "general programming language settings"
  (whitespace-mode +1)
  (setq whitespace-line-column 80)
  (setq whitespace-style '(face lines-tail))
  (linum-mode 1)
  (fci-mode 1)
  (subword-mode +1))

(add-hook 'prog-mode-hook #'dh/prog-hooks)
(add-hook 'prog-mode-hook  #'smartparens-mode)

(provide 'init-source-code)
;;; init-source-code.el ends here
