
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

(setq rspec-use-rvm t)

(eval-after-load 'rspec-mode
 '(rspec-install-snippets))
