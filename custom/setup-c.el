1;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; indent4
(setq c-basic-offset 4)

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; add rainbow bucket
(require 'highlight-parentheses)
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

;;(add-hook 'c-mode-common-hook 'highlight-indent-guides-mode)
;;(setq highlight-indent-guides-method 'column)

;; Available C style:
;; 鈥済nu鈥�1嚙�7: The default style for GNU projects
;; 鈥渒&r鈥�1嚙�7: What Kernighan and Ritchie, the authors of C used in their book
;; 鈥渂sd鈥�1嚙�7: What BSD developers use, aka 鈥淎llman style鈥�1嚙�7 after Eric Allman.
;; 鈥渨hitesmith鈥�1嚙�7: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; 鈥渟troustrup鈥�1嚙�7: What Stroustrup, the author of C++ used in his book
;; 鈥渆llemtel鈥�1嚙�7: Popular C++ coding standards as defined by 鈥淧rogramming in C++, Rules and Recommendations,鈥�1嚙�7 Erik Nyquist and Mats Henricson, Ellemtel
;; 鈥渓inux鈥�1嚙�7: What the Linux developers use for kernel development
;; 鈥減ython鈥�1嚙�7: What Python developers use for extension modules
;; 鈥渏ava鈥�1嚙�7: The default style for java-mode (see below)
;; 鈥渦ser鈥�1嚙�7: When you want to define your own style
(setq c-default-style "bsd") ;; set style to "linux"

(use-package cc-mode)
;;  :init
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete))

(use-package magit)

;;;; rainbow highlight
;;(require 'highlight-parentheses)
;;(add-hook 'c-mode-common-hook 'highlight-parentheses-mode)
;;(add-hook 'c-mode-hook 'highlight-parentheses-mode)
;;(add-hook 'c++-mode-hook 'highlight-parentheses-mode)

;;(define-key c-mode-map (kbd "M-o") 'projectile-find-other-file-other-window)
;;(define-key c++-mode-map (kbd "M-o") 'projectile-find-other-file-other-window)
(define-key c-mode-base-map (kbd "M-o") 'projectile-find-other-file-other-window)
;;(define-key c-mode-base-map (kbd "M-O") 'helm-projectile-find-other-file)

(provide 'setup-c)
