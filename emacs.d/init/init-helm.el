;;; init-helm.el --- Helm configuration

;;; Commentary:

;;; Code:

(use-package helm
  :ensure t
  :bind (("M-y" . helm-show-kill-ring)))

(provide 'init-helm)
;;; init-helm.el ends here
