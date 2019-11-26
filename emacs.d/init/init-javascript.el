;;; init-javascript.el

;;; Code:

(defun init-js2-mode ()
  "Setup JS2 defaults."
  (setq js2-basic-offset 2)
  (setq js2-indent-level 2))

(use-package js2-mode
  :ensure t
  :mode ("\\.js$")
  :config
  (add-hook 'js2-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'js2-mode-hook 'init-js2-mode))

(use-package prettier-js
  :ensure t)

(provide 'init-javascript)
;;; init-javascript.el ends here
