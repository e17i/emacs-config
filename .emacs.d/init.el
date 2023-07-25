;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(push "~/.emacs.d/lisp" load-path)
(setq custom-file "~/.emacs.d/custom.el")

(setq org-element-use-cache nil)  ;; temporarily disable org element cache
(org-babel-load-file "~/.emacs.d/init-babel.org")

(load custom-file)  ;; load cust after babel
(elpy-reenable)  ;; call this after load custom-file
