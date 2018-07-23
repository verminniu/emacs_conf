;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)
;; Available C style:
;; 鈥済nu鈥�: The default style for GNU projects
;; 鈥渒&r鈥�: What Kernighan and Ritchie, the authors of C used in their book
;; 鈥渂sd鈥�: What BSD developers use, aka 鈥淎llman style鈥� after Eric Allman.
;; 鈥渨hitesmith鈥�: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; 鈥渟troustrup鈥�: What Stroustrup, the author of C++ used in his book
;; 鈥渆llemtel鈥�: Popular C++ coding standards as defined by 鈥淧rogramming in C++, Rules and Recommendations,鈥� Erik Nyquist and Mats Henricson, Ellemtel
;; 鈥渓inux鈥�: What the Linux developers use for kernel development
;; 鈥減ython鈥�: What Python developers use for extension modules
;; 鈥渏ava鈥�: The default style for java-mode (see below)
;; 鈥渦ser鈥�: When you want to define your own style
(setq c-default-style "linux") ;; set style to "linux"

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
