(custom-set-variables
 '(frame-background-mode nil)
 '(menu-bar-mode nil)
 '(org-agenda-files nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(blink-cursor-mode nil)
 '(global-linum-mode 1)
 '(show-paren-mode 1)
 ) 

;;行号的限制
(setq line-number-display-limit 1000)

;;颜色配置
(set-background-color "black");;背景色
(set-foreground-color "white");;前景色
(set-face-foreground 'region "green");;区域前景色
(set-face-background 'region "blue");;区域背景色

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(custom-set-faces
)

;;设置org-capture全局快捷键
(define-key global-map "\C-cc" 'org-capture)
;;设置capture模板
(setq org-capture-templates
      '(("j" "Journal" entry (file+datetree "E:/lisp/capture/emacs/journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
	("t" "Todo" entry (file+headline "E:/lisp/capture/emacs/gtd.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")))
;;快速启动日记
(define-key global-map "\C-cj"
  (lambda () (interactive) (org-capture nil "j")))
;;快速启动todo
(define-key global-map "\C-ct"
  (lambda () (interactive) (org-capture nil "t")))