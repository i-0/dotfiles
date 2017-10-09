;; This sets up the load path so that we can override it
(package-initialize nil)

;; Override the packages with the git version of Org and other packages
(add-to-list 'load-path "~/Shared/Configuration/emacs/site-lisp/org-mode/lisp")
(add-to-list 'load-path "~/Shared/Configuration/emacs/site-lisp/org-mode/contrib/lisp")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")

;; Load the rest of the packages
(setq package-enable-at-startup nil)

;; Load literate emacs setup modules
(org-babel-load-file "~/.emacs.d/common.org")
(org-babel-load-file "~/.emacs.d/evil.org")
(org-babel-load-file "~/.emacs.d/ui.org")
(org-babel-load-file "~/.emacs.d/experimental.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (urlenc restclient rainbow-delimiters plantuml-mode paredit helm-projectile expand-region evil-visualstar evil-surround evil-org evil-nerd-commenter evil-magit eclim color-theme-sanityinc-solarized clojure-mode-extra-font-locking cider ac-js2)))
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Envy code R" :foundry "unknown" :slant normal :weight normal :height 180 :width normal)))))
