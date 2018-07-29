;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; indent4
(setq c-basic-offset 4)

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; add rainbow bucket
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(require 'mic-paren)
(paren-activate)
(add-hook 'c-mode-common-hook
          (function (lambda ()
                      (paren-toggle-open-paren-context t))))

;; Available C style:
;; “gnu 1�71ￄ1�77: The default style for GNU projects
;; “k&r 1�71ￄ1�77: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd 1�71ￄ1�77: What BSD developers use, aka “Allman style 1�71ￄ1�77 after Eric Allman.
;; “whitesmith 1�71ￄ1�77: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup 1�71ￄ1�77: What Stroustrup, the author of C++ used in his book
;; “ellemtel 1�71ￄ1�77: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations, 1�71ￄ1�77 Erik Nyquist and Mats Henricson, Ellemtel
;; “linux 1�71ￄ1�77: What the Linux developers use for kernel development
;; “python 1�71ￄ1�77: What Python developers use for extension modules
;; “java 1�71ￄ1�77: The default style for java-mode (see below)
;; “user 1�71ￄ1�77: When you want to define your own style
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
