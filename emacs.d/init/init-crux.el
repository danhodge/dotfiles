;;; init-crux.el --- crux configuration

;;; Commentary:

;;; Code:

(use-package crux
  :ensure t
  :bind (("C-c r" . crux-rename-file-and-buffer)
         ("C-c D" . crux-delete-file-and-buffer)))

(provide 'init-crux)
;;; init-crux.el ends here
