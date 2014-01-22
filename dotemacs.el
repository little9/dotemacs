(add-to-list 'load-path "~/.emacs.d/")

;; Packages 
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))

(when (not package-archive-contents)
  (package-refresh-contents))

;; end packages 



;; Web mode 
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'magic-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
(add-to-list 'magic-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))




(add-to-list 'magic-mode-alist 
    '("\\(?:<\\?xml\\s +[^>]*>\\)?\\s *<\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *<\\)*\\(?:!DOCTYPE\\s +[^>]*>\\s *<\\s *\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *\<\\)*\\)?[Hh][Tt][Mm][Ll]"
        . web-mode))


(defvar web-mode-content-types
  '(("css"        . "\\.\\(css\\|scss\\)\\'")
    ("javascript" . "\\.js\\'")
    ("json"       . "\\.\\(json\\|jsonld\\)\\'")
    ("html"       . "."))
  "content types")

;; end Web Mode 



;; Enhanced Ruby Mode 
 
(add-to-list 'load-path "~/enhanced-ruby-mode") ; must be added after any path containing old ruby-mode
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-to-list 'auto-mode-alist '("\\.rjs$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '(".irbrc" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.builder$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . enh-ruby-mode))

;; end Enhanced Ruby Mode 



;; Fonts 
(defun set-font (font-family height)
     (interactive "sFont family: \nnHeight: ")
     (set-face-attribute 'default nil :family font-family :height height)
     (set-fontset-font "fontset-default" 'unicode font-family))


 (set-font "CosmicSansNeueMono" 160)


;; end Fonts



;; Emacs nav
(add-to-list 'load-path "~/.emacs.d/nav")
(require 'nav)
(nav-disable-overeager-window-splitting)
;; Optional: set up a quick key to toggle nav
;; (global-set-key [f8] 'nav-toggle)

(nav)
;; end Emacs Nav




;; Autocomplete 

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)


;; end Autocomplete 



;; Spelling
(setq ispell-program-name "aspell")

(require 'flyspell)
(setq flyspell-issue-message-flg nil)
(add-hook 'enh-ruby-mode-hook
          (lambda () (flyspell-prog-mode)))


;; end spelling


;; Org-mode 


;; end org-mode

;; Custom file associations 
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))







