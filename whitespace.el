
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq require-final-newline t)


(add-hook 'before-save-hook
          'delete-trailing-whitespace)

(setq-default indicate-buffer-boundaries 'left)
(setq-default indicate-empty-lines +1)
