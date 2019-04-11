;;; init-ace-window.el --- ace window configuration

;;; Commentary:

;;; Code:

(use-package ace-window
  :ensure t
  :bind (("M-o" . ace-window)
         ("C-c s" . ace-swap-window)))

(provide 'init-ace-window)
;;; init-ace-window.el ends here
