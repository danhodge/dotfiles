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

(defun dh/prog-hooks ()
  "general programming language settings"
  (whitespace-mode)
  (linum-mode 1)
  (fci-mode 1))

(add-hook 'prog-mode-hook #'dh/prog-hooks)

(provide 'init-source-code)
;;; init-source-code.el ends here
