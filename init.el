;;;; 启动切换到svn代码目录下
;;(setq default-directory "e:/svn/")

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
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  ;;(require 'setup-helm-gtags)
  )

(require 'setup-editing)

(load-theme 'ample-zen t)

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
;;(setq user-full-name "verminniu")

;; load my config
(require 'my_config)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#313131" "#D9A0A0" "#8CAC8C" "#FDECBC" "#99DDE0" "#E090C7" "#A0EDF0" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (hc-zenburn)))
 '(custom-safe-themes
   (quote
    ("ace9f12e0c00f983068910d9025eefeb5ea7a711e774ee8bb2af5f7376018ad2" "a5956ec25b719bf325e847864e16578c61d8af3e8a3d95f60f9040d02497e408" "62c81ae32320ceff5228edceeaa6895c029cc8f43c8c98a023f91b5b339d633f" "c856158cc996d52e2f48190b02f6b6f26b7a9abd5fea0c6ffca6740a1003b333" "ef98b560dcbd6af86fbe7fd15d56454f3e6046a3a0abd25314cfaaefd3744a9e" "f27c3fcfb19bf38892bc6e72d0046af7a1ded81f54435f9d4d09b3bff9c52fc1" "eb7a0fb4b30f356c4d752fa5b8f849819173667c570db0d50546ee3390cabca4" "420459d6eeb45aadf5db5fbcc3d6990b65141c104911f7359454fc29fa9d87a0" "d19f00fe59f122656f096abbc97f5ba70d489ff731d9fa9437bac2622aaa8b89" "705c4996e73508f26e3980e572d94b0dd51ba1a94123cd558649947008981cee" default)))
 '(fci-rule-color "#5E5E5E")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#202020")
 '(vc-annotate-color-map
   (quote
    ((20 . "#C99090")
     (40 . "#D9A0A0")
     (60 . "#ECBC9C")
     (80 . "#DDCC9C")
     (100 . "#EDDCAC")
     (120 . "#FDECBC")
     (140 . "#6C8C6C")
     (160 . "#8CAC8C")
     (180 . "#9CBF9C")
     (200 . "#ACD2AC")
     (220 . "#BCE5BC")
     (240 . "#CCF8CC")
     (260 . "#A0EDF0")
     (280 . "#79ADB0")
     (300 . "#89C5C8")
     (320 . "#99DDE0")
     (340 . "#9CC7FB")
     (360 . "#E090C7"))))
 '(vc-annotate-very-old-color "#E090C7" t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-face-highlight-textual ((t (:background "blue")))))
