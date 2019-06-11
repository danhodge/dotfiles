;;; init-json.el --- json configuration

;;; Commentary:

;;; Code:

(use-package json-mode
  :ensure t)

(add-hook 'json-mode-hook
          (lambda()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

(provide 'init-json)
;;; init-json.el ends here
