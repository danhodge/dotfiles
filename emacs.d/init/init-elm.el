;;; init-elm.el --- Elm configuration

;;; Commentary:

;;; Code:

(use-package elm-mode
  :ensure t
  :init
  (setq elm-format-on-save t))

(defun dh/elm-hooks ()
  "elm settings"
  (add-to-list 'company-backends 'company-elm))

(add-hook 'prog-mode-hook #'dh/elm-hooks)

(provide 'init-elm)
;;; init-elm.el ends here
