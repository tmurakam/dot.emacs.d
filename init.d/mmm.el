(require 'mmm-auto)
(setq mmm-global-mode 'maybe)

(mmm-add-classes
 '((embedded-css
    :submode css-mode
    :front "<style[^>]*>"
    :back "</style>")))
(mmm-add-mode-ext-class nil "\\.html\\'" 'embedded-css)

    