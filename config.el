(setq doom-theme 'doom-monokai-pro)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(when (display-graphic-p)
  (require 'all-the-icons))

;; Configure LSP-ui to define when and how to display informations.
(after! lsp-ui
  (setq lsp-ui-doc-max-height 20
        lsp-ui-doc-max-width 80
        lsp-ui-sideline-ignore-duplicate t
        lsp-ui-doc-header nil
        lsp-ui-doc-include-signature nil
        lsp-ui-doc-position 'bottom
        lsp-ui-doc-use-webkit nil
        lsp-ui-flycheck-enable t
        lsp-ui-imenu-kind-position 'left
        lsp-ui-sideline-code-actions-prefix "💡"
        lsp-lens-enable nil
        company-lsp-match-candidate-predicate #'company-lsp-match-candidate-prefix
        ))

(add-hook 'before-save-hook `lsp-format-buffer)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-c C-S-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-S-a") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-C m") 'magit)
