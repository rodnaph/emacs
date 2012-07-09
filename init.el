
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/themes/solarized/")

(require 'clojure-mode)

(require 'color-theme)
(require 'color-theme-solarized)

(eval-after-load "color-theme"
    '(progn
        (color-theme-initialize)
        (color-theme-solarized-dark)))

