
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/themes/solarized")

(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path 
        (append
         (split-string-and-unquote path ":")
         exec-path)))

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))

(package-initialize)

(require 'clojure-mode)
(require 'php-mode)
(require 'color-theme)
(require 'color-theme-molokai)
(require 'color-theme-solarized)
(require 'auto-complete)

; allow M-3 to display a hash
(global-set-key (kbd "M-3") 
  '(lambda () (interactive) (insert "#")))

; enable line numbers globally
(global-linum-mode)

; disable line wrapping
(setq-default truncate-lines t)

; disable the toolbar
(tool-bar-mode 1)

; kill all buffers apart from the current one
(defun kill-other-buffers ()
    (interactive)
    (mapc 'kill-buffer 
          (delq (current-buffer) 
                (remove-if-not 'buffer-file-name (buffer-list)))))

; set color theme
(color-theme-solarized-dark)

