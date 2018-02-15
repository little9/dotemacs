;; start with org
(setq inhibit-startup-screen +1)
(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)

(setq org-agenda-files (list "~/Sync/repos/org/work.org"))

;(org-babel-do-load-languages
; 'org-babel-load-languages
; '((scheme . t)
;   (emacs-lisp . t)
;   (ruby . t)
;   (R . t)
;   (python . t)
;   (C . t)
;   (sh . t)))


;; stop emacs asking for confirmation
(setq org-confirm-babel-evaluate nil)

(setq org-src-fontify-natively t)
