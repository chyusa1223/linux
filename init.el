(setq max-lisp-eval-depth 10000)
(setq max-specpdl-size 10000)
(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
 (add-to-list 'package-archives
 	     '("gnu" . "https://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives
;;	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit yasnippet-snippets projectile sematic counsel-gtags ggtags rtags-helm ac-rtags company-c-headers company-irony auto-complete-c-headers auto-complete-clang iedit aggressive-indent hungry-delete aggresive-indent yasnippet color-theme zenburn-theme which-key use-package try swagger-to-org org-bullets flycheck-rtags evil elfeed-org dash-functional counsel company-rtags cmake-mode cmake-ide auto-complete-clang-async auto-complete ace-window)))
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-I/home/ys12/project_root/include1/" "-I/home/ys12/project_root/include2/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#3F3F3F"))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
