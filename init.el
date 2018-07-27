;; 启动切换到svn代码目录下
(setq default-directory "e:/svn/")

(require 'package)

;; change tsinghua mirrors
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  ;;(require 'setup-helm-gtags)
  )

(require 'setup-editing)

;;;; sr-speedbar
;;(require 'sr-speedbar)
;;(setq sr-speedbar-right-side nil)
;;(setq sr-speedbar-width 35)
;;(setq dframe-update-speed t)
;;(global-set-key (kbd "<f5>") (lambda()
;;          (interactive)
;;          (sr-speedbar-toggle)))

(global-set-key [f5] 'helm-imenu)

;; neotree
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-show-hidden-files nil)
(setq neo-smart-open t)
(global-set-key [f2] 'neotree-toggle)

;;;; auto save
;;(require 'auto-save)
;;(auto-save-enable)
;;(setq auto-save-slient t)
;;(setq auto-save-delete-trailing-whitespace t)

;; line number
(require 'display-line-number)
;;(setq display-line-number-format "%3d ")
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; use custom setup-c
(require 'setup-c)

;; use cquery
(require 'setup-cquery)

;; load doxygen and set my name
(require 'doxygen)
(setq user-full-name "verminniu")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
