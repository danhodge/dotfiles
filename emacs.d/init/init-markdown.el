;;; init-markdown.el --- markdown configuration

;;; Commentary:

;;; Code:

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode))
  :init (setq markdown-command "mulimarkdown"))

(provide 'init-markdown)
;;; init-markdown.el ends here