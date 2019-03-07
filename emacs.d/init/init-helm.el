;;; init-helm.el --- Helm configuration

;;; Commentary:

;;; Code:

(use-package helm
  :ensure t
  :init
  (setq helm-split-window-in-side-p t)
  (setq helm-buffers-fuzzy-matching t)
  (setq helm-move-to-line-cycle-in-source t)
  (setq helm-ff-search-library-in-sexp t)
  (setq helm-ff-file-name-history-use-recentf t)
  :bind (("M-y" . helm-show-kill-ring)
         ("C-x C-b" . helm-buffers-list)
         ("C-x C-f" . helm-find-files)))

(provide 'init-helm)
;;; init-helm.el ends here
