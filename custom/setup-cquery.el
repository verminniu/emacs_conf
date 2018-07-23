(require 'cquery)

(setq cquery-executable "D:/code_tools/cquery/build/Release/bin/cquery.exe")
;; ;; Arch Linux aur/cquery-git aur/cquery
;; (setq cquery-executable "/usr/bin/cquery")

;; ;; Log file
(setq cquery-extra-args '("--log-file=D:/code_tools/cquery/build/Release/log/cq.log"))

;; ;; Cache directory, both relative and absolute paths are supported
;; (setq cquery-cache-dir ".cquery_cached_index")
;; ;; Initialization options
;; (setq cquery-extra-init-params '(:cacheFormat "msgpack"))
(setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack"))

(with-eval-after-load 'projectile
  (setq projectile-project-root-files-top-down-recurring
        (append '("compile_commands.json"
                  ".cquery")
                projectile-project-root-files-top-down-recurring)))

(defun cquery//enable ()
  (condition-case nil
      (lsp-cquery-enable)
    (user-error nil)))

(use-package cquery
  :commands lsp-cquery-enable
  :init (add-hook 'c-mode-common-hook #'cquery//enable)
        (add-hook 'c-mode-hook #'cquery//enable)
        (add-hook 'c++-mode-hook #'cquery//enable))
;; Also see lsp-project-whitelist lsp-project-blacklist cquery-root-matchers

(use-package company-lsp
  :defer t
  :init
  (setq company-quickhelp-delay 0)
  ;; Language servers have better idea filtering and sorting,
  ;; don't filter results on the client side.
  (setq company-transformers nil
        company-lsp-async t
        company-lsp-cache-candidates nil)

  (add-to-list 'company-backends 'company-lsp)
  (add-hook 'c-mode-common-hook 'company-lsp)
)

(setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil)
(setq cquery-extra-init-params '(:completion (:detailedLabel t)))

(require 'helm-xref)
(setq xref-show-xrefs-function 'helm-xref-show-xrefs)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c-mode-common-hook 'flycheck-mode)

;;(define-key evil-normal-state-map (kbd "C-p") 'lsp-ui-peek-jump-forward)
;;(define-key evil-normal-state-map (kbd "C-t") 'lsp-ui-peek-jump-backward)

(setq cquery-sem-highlight-method 'font-lock)
;; alternatively, (setq cquery-sem-highlight-method 'overlay)

;; For rainbow semantic highlighting
(cquery-use-default-rainbow-sem-highlight)

(provide 'setup-cquery)