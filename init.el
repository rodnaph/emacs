
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
(require 'color-theme-solarized)
(require 'auto-complete)

; window configuration
(require 'windows)

; allow M-3 to display a hash
(global-set-key (kbd "M-3") 
  '(lambda () (interactive) (insert "#")))

; alias C-g to be goto-line
(global-set-key "\M-g" 'goto-line)

; enable line numbers globally
(global-linum-mode)

; disable line wrapping
(setq-default truncate-lines t)

; disable the toolbar
(tool-bar-mode 0)

; use tab width of 4
(setq tab-width 4)

; set default offset to 4
(setq c-basic-offset 4)

; always use spaces not tabs
(setq-default indent-tabs-mode nil)

; kill all buffers apart from the current one
(defun kill-other-buffers ()
    (interactive)
    (mapc 'kill-buffer 
          (delq (current-buffer) 
                (remove-if-not 'buffer-file-name (buffer-list)))))

; disable file backups
(setq backup-inhibited 1)

; disable auto-save
(setq auto-save-default nil)

; Set color theme
(color-theme-solarized-dark)

