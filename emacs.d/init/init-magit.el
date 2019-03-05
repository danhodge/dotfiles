;;; init-magit.el --- Magit configuration

;;; Commentary:

;;; Code:

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(provide 'init-magit)
;;; init-magit.el ends here
