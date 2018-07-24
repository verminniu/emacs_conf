;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; indent4
(setq c-basic-offset 4)

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)
;; Available C style:
;; “gnu 1�7: The default style for GNU projects
;; “k&r 1�7: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd 1�7: What BSD developers use, aka “Allman style 1�7 after Eric Allman.
;; “whitesmith 1�7: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup 1�7: What Stroustrup, the author of C++ used in his book
;; “ellemtel 1�7: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations, 1�7 Erik Nyquist and Mats Henricson, Ellemtel
;; “linux 1�7: What the Linux developers use for kernel development
;; “python 1�7: What Python developers use for extension modules
;; “java 1�7: The default style for java-mode (see below)
;; “user 1�7: When you want to define your own style
(setq c-default-style "bsd") ;; set style to "linux"

(use-package cc-mode)
;;  :init
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete))

;;;; rainbow highlight
;;(require 'highlight-parentheses)
;;(add-hook 'c-mode-common-hook 'highlight-parentheses-mode)
;;(add-hook 'c-mode-hook 'highlight-parentheses-mode)
;;(add-hook 'c++-mode-hook 'highlight-parentheses-mode)

(provide 'setup-c)
