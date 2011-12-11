;; load path
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

(load "init_lang")
(load "init_keybind")

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

;; system dependent configs
(if (featurep 'meadow)
    (load "init_meadow")
  (load "init_misc")
)

;;; use space for indentation
(setq-default indent-tabs-mode nil)

;; custom-file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
