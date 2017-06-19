;; Emacs起動時にrst.elを読み込み
;(require 'rst)
(autoload 'rst-mode "rst" nil t)

;; 拡張子の*.rst, *.restのファイルをrst-modeで開く
(setq auto-mode-alist
      (append '(("\\.rst$" . rst-mode)
                ("\\.rest$" . rst-mode)) auto-mode-alist))

;; 背景が黒い場合はこうしないと見出しが見づらい
(setq frame-background-mode 'dark)

;; 全部スペースでインデントしましょう
(add-hook 'rst-mode-hook '(lambda() (setq indent-tabs-mode nil)))
