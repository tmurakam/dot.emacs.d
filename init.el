;; Language settings
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Activate Backspace 
(global-set-key "\C-h" 'delete-backward-char)
(define-key function-key-map [delete] [8])
(put 'delete 'ascii-character 8)

;; key binds
(global-set-key "\M-c" 'compile)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-c" 'compile)
;(global-set-key "\M-e" 'next-error)
(global-set-key [up] 'previous-error)
(global-set-key [down] 'next-error)
;(global-set-key  [(f1)]  (lambda () (interactive) (manual-entry (current-word))))

;; Display time
(display-time)

;; Display line number
(line-number-mode t)

;; Display column number
(column-number-mode t)

;; Don't make new line when cursor is end of buffer.
(setq next-line-add-newlines nil)

;; Font-Lock mode
(global-font-lock-mode t)

;; ruby-mode
(add-hook 'ruby-mode-hook
          '(lambda ()
             (inf-ruby-keys)
             (setq tab-width 8)))
(setq ruby-indent-level 2)

(autoload 'rubydb "rubydb3x"
  "run rubydb on program file in buffer *gud-file*.
the directory containing file becomes the initial working directory
and source-file directory for your debugger." t)

;; auto install
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

;; system dependent configs
(if (featurep 'meadow)
    (load-file "~/.emacs.d/meadow.el")
  (load-file "~/.emacs.d/emacs.el")
)

;;; use space for indentation
(setq-default indent-tabs-mode nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "linux") (c++-mode . "linux") (objc-mode . "linux") (idl-mode . "linux") (pike-mode . "linux") (other . "linux"))))
 '(c-insert-tab-function (quote insert-tab))
 '(c-tab-always-indent nil)
 '(inhibit-local-menu-bar-menus t)
 '(perl-indent-level 4))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
