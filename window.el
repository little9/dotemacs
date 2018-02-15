(when (window-system)
  (scroll-bar-mode -1)
  (exec-path-from-shell-initialize))

(when (not (window-system))
  (xterm-mouse-mode +1))
(powerline-default-theme)

(setq display-time-12hr-format t)
(display-time-mode +1)
