;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; javascript mode
(autoload-if-found 'javascript-mode "javascript" "My javascript major mode" t)

(when (autoload-if-found 'js2-mode "js2-mode" "My javascript major mode" t)

  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

  (setq js2-cleanup-whitespace nil
        js2-mirror-mode nil
        js2-bounce-indent-flag nil)

  (defun indent-and-back-to-indentation ()
    (interactive)
    (indent-for-tab-command)
    (let ((point-of-indentation
           (save-excursion
             (back-to-indentation)
             (point))))
      (skip-chars-forward "\\s " point-of-indentation)))

  ;(define-key js2-mode-map "\C-i" 'indent-and-back-to-indentation)
  ;(define-key js2-mode-map "\C-m" nil)
)
