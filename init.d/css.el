(autoload 'css-mode "css-mode")

(setq auto-mode-alist
      (append
       '(("\\.css$" . css-mode))
      auto-mode-alist))

;(setq php-mode-force-pear t)


