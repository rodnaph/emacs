
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/themes/solarized/")

(require 'clojure-mode)
(require 'php-mode)
(require 'color-theme)
(require 'color-theme-solarized)

(eval-after-load "color-theme"
    '(progn
        (color-theme-initialize)
        (color-theme-solarized-dark)))

(autoload 'paredit-mode "paredit"
      "Minor mode for pseudo-structurally editing Lisp code." t)
  (add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
  (add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
  (add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'scheme-mode-hook           (lambda () (paredit-mode +1)))

(set-face-attribute 'default nil :font "Monaco-12")

