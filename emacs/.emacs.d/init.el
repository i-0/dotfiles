;; This sets up the load path so that we can override it
(package-initialize nil)

;; Override the packages with the git version of Org and other packages
(add-to-list 'load-path "~/Shared/Configuration/emacs/site-lisp/org-mode/lisp")
(add-to-list 'load-path "~/Shared/Configuration/emacs/site-lisp/org-mode/contrib/lisp")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")

;; Load the rest of the packages
(setq package-enable-at-startup nil)

(org-babel-load-file "~/.emacs.d/common.org")
(org-babel-load-file "~/.emacs.d/evil.org")
(org-babel-load-file "~/.emacs.d/experimental.org")

