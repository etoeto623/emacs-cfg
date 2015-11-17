(custom-set-variables
 '(frame-background-mode nil)
 '(menu-bar-mode nil)
 '(org-agenda-files nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
 ;;隐藏工具条

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
