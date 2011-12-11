;; -*- Emacs-Lisp -*-
;; .emacs.el for Emacs 20.x (for English users)
;;
;;
;; * Wed Jul 26 2000 Masaru Yokoi <masaru@turbolinux.co.jp>
;; - Modified for English version.
;;
;; * Tue May 23 2000 Masaru Yokoi <masaru@turbolinux.co.jp>
;; - First release.
;;

;; Mule-UCS
;(require 'un-define)

(cond
 ((eq window-system 'x)
  ;; When running on X 
  (set-face-foreground 'modeline "yellow")
  (set-face-background 'modeline "navy")
  (set-scroll-bar-mode 'right)
  (setq 
   ;;tool-bar-mode nil			;; Remove toolbar in Emacs-21
   default-frame-alist '(append
			 ((font . "fontset-standard")
			  (menu-bar . 1)
			  ;;(width	. 80)
			  ;;(height . 25)
			  default-frame-alist))))
 (t
  ;; When running on any terminal (e.g. emacs -nw)
  ;; Remove menu bar
  (menu-bar-mode -1)))

; cache file name
(let* ((file-dir "~/.emacs-flc"))
  (if (file-exists-p file-dir) 
      (setq fast-lock-cache-directories (list file-dir))))


;; Use fast-lock-mode to display faster.
;; '10/9/21: この設定を使うと Java ファイルのオープン時にエラーになるためコメントアウト
;(setq font-lock-support-mode 'fast-lock-mode)

;; Wheel mouse
(defun down-slightly () (interactive) (scroll-down 5))
(defun up-slightly   () (interactive) (scroll-up   5))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly  )
(defun down-one () (interactive) (scroll-down 1))
(defun up-one   () (interactive) (scroll-up   1))
(global-set-key [S-mouse-4] 'down-one)
(global-set-key [S-mouse-5] 'up-one  )
(defun down-a-lot () (interactive) (scroll-down))
(defun up-a-lot   () (interactive) (scroll-up  ))
(global-set-key [C-mouse-4] 'down-a-lot)
(global-set-key [C-mouse-5] 'up-a-lot  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto install
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Wanderlust
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mew

(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; gtags
(autoload 'gtags-mode "gtags" "" t)
(setq load-path (cons "/usr/local/share/gtags" load-path))

(setq c-mode-hook
      '(lambda ()
	 (gtags-mode 1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; navi2ch
(autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)
(setq navi2ch-list-bbstable-url "http://menu.2ch.net/bbsmenu.html")

;; patch file
(setq auto-mode-alist
      (append
       '(("\\.patch$" . fundamental-mode))
       auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;PO mode stuff

(setq auto-mode-alist
      (cons '("\\.pox?\\'" . po-mode) auto-mode-alist))
(autoload 'po-mode "po-mode")

(global-set-key [(f1)] (lambda () (interactive) (manual-
  entry (current-word))))
