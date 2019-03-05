;;; init-source-code.el --- Configuration for working with source code

;;; Commentary:

;;; Code:

(defun dh/prog-hooks ()
  "general programming language settings"
  (whitespace-mode)
  (linum-mode 1))

(add-hook 'prog-mode-hook #'dh/prog-hooks)

(provide 'init-source-code)
;;; init-source-code.el ends here
