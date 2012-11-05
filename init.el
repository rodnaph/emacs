
(add-to-list 'load-path "~/.emacs.d/")

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'clojure-mode)
(require 'php-mode)
(require 'color-theme)
(require 'color-theme-molokai)

(global-set-key (kbd "M-3") 
  '(lambda () (interactive) (insert "#")))

(color-theme-molokai)
