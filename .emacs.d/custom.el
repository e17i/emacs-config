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
 '(default-input-method "german-postfix")
 '(delete-selection-mode t)
 '(dired-dwim-target t)
 '(dired-recursive-deletes (quote top))
 '(dynamic-completion-mode nil)
 '(ediff-before-setup-hook
   (quote
    ((lambda nil
       (window-configuration-to-register 101)))))
 '(ediff-quit-hook
   (quote
    (ediff-cleanup-mess
     (lambda nil
       (jump-to-register 101)))))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(ediff-suspend-hook
   (quote
    (ediff-default-suspend-function
     (lambda nil
       (jump-to-register 101)))))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(elpy-mode-hook (quote (hl-line-mode flycheck-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-folding elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(evil-default-state (quote emacs))
 '(evil-insert-state-modes nil)
 '(evil-motion-state-modes nil)
 '(fill-column 78)
 '(frame-auto-hide-function (function delete-frame))
 '(frame-icon-title-format
   (quote
    (((quote buffer-name)
      "%b")
     " || " system-name " || "
     ((quote buffer-name)
      "%f"))))
 '(frame-title-format
   (quote
    (((quote buffer-name)
      "%b")
     " || " system-name " || "
     ((quote buffer-name)
      "%f"))) t)
 '(fringe
   ((((class color)
      (background light))
     (:background "grey50"))))
 '(fringe-mode 0 nil (fringe))
 '(help-buffer-regex
   "\\*Help\\*\\|\\*Apropos\\*\\|\\*Python Doc\\*\\|\\*jedi:doc\\*")
 '(hippie-expand-verbose nil)
 '(history-delete-duplicates t)
 '(indent-tabs-mode nil)
 '(isearch-lazy-count t)
 '(magit-git-executable "/usr/bin/git")
 '(menu-bar-mode nil)
 '(mouse-drag-and-drop-region t)
 '(mouse-drag-copy-region t)
 '(mouse-wheel-scroll-amount (quote (1 ((meta) . 3) ((shift) . text-scale))))
 '(my-env-actions
   (quote
    ((mouse-wheel-zoom my-x11-wheel-zoom my-env-reset-keymap)
     (mac-mouse-yank mac-mouse-yank my-env-reset-keymap)
     (mouse-undo mouse-undo my-env-reset-keymap)
     (german-kbd activate-german-keymap my-env-reset-keymap)
     (apple-kbd on-apple-keyboard ignore)
     (pc-kbd on-pc-keyboard ignore)
     (battery
      (lambda nil
        (display-battery-mode 1))
      (lambda nil
        (display-battery-mode 0))))))
 '(my-env-definitions
   (quote
    ((68
      (mouse-wheel-zoom pc-kbd mouse-undo mac-mouse-yank))
     (77
      (german-kbd apple-kbd)))))
 '(my-environment-mode t)
 '(my-frame-stylings
   (quote
    (frame-to-top-x11 frame-width-dec frame-height-dec-two frame-width-dec)))
 '(my-frame-transparency 100)
 '(nxml-sexp-element-flag t)
 '(org-agenda-files nil)
 '(org-babel-python-command "python2")
 '(org-goto-auto-isearch nil)
 '(org-src-preserve-indentation t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (lsp-python-ms company-lsp lsp-ui lsp-pyright expand-region yaml-mode indent-tools solarized-theme deadgrep undo-tree which-key smartparens tagedit ob-restclient company-restclient restclient py-autopep8 flycheck elpy company-jedi json-mode jedi-direx jedi ox-rst magit zzz-to-char ace-jump-mode helm realgud evil markdown-mode cider web-mode org-plus-contrib js2-mode electric-spacing auctex)))
 '(python-mode-hook
   (quote
    ((lambda nil "Turn off Indent Tabs mode."
       (setq indent-tabs-mode nil))
     (lambda nil "highlight current column"
       (highlight-indentation-current-column-mode))
     (lambda nil "Activate jedi"
       (jedi:setup))
     (lambda nil "use superword mode"
       (superword-mode))
     (lambda nil "indent tools minor mode"
       (indent-tools-minor-mode))
     (lambda nil "use electric spacing mode"
       (electric-spacing-mode)))) t)
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 3)
 '(select-enable-clipboard t)
 '(sentence-end-double-space nil)
 '(server-mode t)
 '(sgml-xml-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(sp-base-key-bindings nil)
 '(split-height-threshold 90)
 '(sql-oracle-options (list oracle-startup-script))
 '(svn-status-hide-unmodified t)
 '(tool-bar-mode nil)
 '(wdired-allow-to-change-permissions (quote advanced))
 '(which-key-idle-delay 2.0)
 '(which-key-idle-secondary-delay 0.5)
 '(window-min-height 8)
 '(window-min-width 40))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "darkred" :foreground "white"))))
 '(ediff-even-diff-A ((t (:background "blue1"))))
 '(ediff-even-diff-Ancestor ((t (:background "Blue2"))))
 '(ediff-even-diff-B ((t (:background "Blue3"))))
 '(ediff-even-diff-C ((t (:background "Blue4"))))
 '(ediff-odd-diff-A ((t (:background "purple1"))))
 '(ediff-odd-diff-Ancestor ((t (:background "purple2"))))
 '(ediff-odd-diff-B ((t (:background "purple3"))))
 '(ediff-odd-diff-C ((t (:background "purple4"))))
 '(highlight-indentation-current-column-face ((t (:background "gray25"))))
 '(highlight-indentation-face ((t (:background "gray12")))))
