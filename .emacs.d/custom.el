(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(buffers-menu-show-directories t)
 '(c-basic-offset 2)
 '(column-number-mode t)
 '(comint-completion-autolist t)
 '(custom-file "~/.emacs.d/custom.el")
 '(delete-selection-mode t)
 '(dired-recursive-deletes 'top)
 '(dynamic-completion-mode nil)
 '(fill-column 78)
 '(frame-icon-title-format
   '(('buffer-name "%b")
     " || " system-name " || "
     ('buffer-name "%f")))
 '(frame-title-format
   '(('buffer-name "%b")
     " || " system-name " || "
     ('buffer-name "%f")) t)
 '(fringe
   ((((class color)
      (background light))
     (:background "grey50"))))
 '(fringe-mode 0 nil (fringe))
 '(hippie-expand-verbose nil)
 '(history-delete-duplicates t)
 '(indent-tabs-mode nil)
 '(isearch-lazy-count t)
 '(magit-git-executable "/opt/local/bin/git")
 '(mouse-drag-copy-region t)
 '(mouse-wheel-scroll-amount '(1 ((meta) . 3) ((shift) . text-scale)))
 '(ns-alternate-modifier 'meta)
 '(ns-command-modifier 'super)
 '(ns-control-modifier 'control)
 '(ns-right-alternate-modifier 'none)
 '(ns-right-command-modifier 'meta)
 '(org-agenda-files nil)
 '(org-babel-python-command "python2")
 '(org-goto-auto-isearch nil)
 '(org-src-preserve-indentation t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(smartparens tagedit ob-restclient company-restclient restclient py-autopep8 flycheck elpy company-jedi json-mode jedi-direx jedi ox-rst magit zzz-to-char ace-jump-mode helm realgud evil markdown-mode cider web-mode org-plus-contrib js2-mode electric-spacing auctex))
 '(python-mode-hook
   '((lambda nil "Turn off Indent Tabs mode."
       (setq indent-tabs-mode nil))
     set-python-mode-keys init-python-stuff) t)
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(select-enable-clipboard t)
 '(sentence-end-double-space nil)
 '(server-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(sp-base-key-bindings 'sp)
 '(split-height-threshold 90)
 '(sql-oracle-options (list oracle-startup-script))
 '(svn-status-hide-unmodified t)
 '(tool-bar-mode nil)
 '(wdired-allow-to-change-permissions 'advanced))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "darkred" :foreground "white")))))
