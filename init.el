;; load path
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

;; load inits
(load "init_lang")
(load "init_keybind")
(load "init_ruby")
(load "init_misc")

;; system dependent configs
(if (featurep 'meadow)
    (load "init_meadow")
  (load "init_linux")
)

;; custom-file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
