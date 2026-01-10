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
 '(dired-recursive-deletes 'top)
 '(display-buffer-base-action
   '((display-buffer-maybe-as-scroll-buffer display-buffer-dedicated-window display-buffer--maybe-same-window display-buffer-reuse-window display-buffer--maybe-pop-up-frame-or-window display-buffer-in-previous-window display-buffer-below-selected display-buffer-at-bottom display-buffer-pop-up-frame)))
 '(display-time-24hr-format t)
 '(display-time-default-load-average nil)
 '(dynamic-completion-mode nil)
 '(ediff-before-setup-hook '((lambda nil (window-configuration-to-register 101))))
 '(ediff-quit-hook '(ediff-cleanup-mess (lambda nil (jump-to-register 101))))
 '(ediff-split-window-function 'split-window-horizontally)
 '(ediff-suspend-hook
   '(ediff-default-suspend-function
     (lambda nil
       (jump-to-register 101))))
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(elpy-mode-hook '(hl-line-mode flycheck-mode))
 '(elpy-modules
   '(elpy-module-company elpy-module-eldoc elpy-module-folding elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults))
 '(evil-default-state 'emacs)
 '(evil-insert-state-modes nil)
 '(evil-motion-state-modes nil)
 '(exec-path
   '("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/MacPorts/Emacs.app/Contents/MacOS/bin" "/opt/local/bin"))
 '(frame-auto-hide-function #'delete-frame)
 '(fringe-mode 0 nil (fringe))
 '(gud-mixvm-command-name "/opt/local/bin/mixvm")
 '(help-buffer-regex
   "\\*Help\\*\\|\\*Apropos\\*\\|\\*Python Doc\\*\\|\\*jedi:doc\\*")
 '(hippie-expand-verbose nil)
 '(history-delete-duplicates t)
 '(indent-tabs-mode nil)
 '(isearch-lazy-count t)
 '(magit-git-executable "/opt/local/bin/git")
 '(mouse-drag-and-drop-region t)
 '(mouse-drag-copy-region t)
 '(mouse-wheel-scroll-amount '(1 ((meta) . 3) ((shift) . text-scale)))
 '(my-env-actions
   '((mouse-wheel-zoom my-wheel-zoom my-env-reset-keymap)
     (mouse-undo mouse-undo my-env-reset-keymap)
     (german-kbd activate-german-keymap my-env-reset-keymap)
     (apple-kbd on-apple-keyboard ignore)
     (pc-kbd on-pc-keyboard ignore)
     (notebook-kbd on-notebook-keyboard ignore)
     (battery
      (lambda nil
        (display-battery-mode 1))
      (lambda nil
        (display-battery-mode 0)))
     (use-super-as-ctl-x use-super-as-ctl-x ignore)))
 '(my-env-definitions
   '((68
      (mouse-wheel-zoom pc-kbd mouse-undo mouse-yank use-super-as-ctl-x))
     (77
      (german-kbd apple-kbd battery use-super-as-ctl-x))))
 '(my-environment-mode t)
 '(my-frame-background "White")
 '(my-frame-foreground "Black")
 '(my-frame-stylings
   '(frame-width-below-threshold frame-height-dec frame-to-left frame-to-top))
 '(my-frame-transparency 85)
 '(ns-alternate-modifier 'super)
 '(ns-command-modifier 'meta)
 '(ns-control-modifier 'control)
 '(ns-right-alternate-modifier 'alternate)
 '(ns-right-command-modifier 'meta)
 '(nxml-sexp-element-flag t)
 '(org-agenda-files nil)
 '(org-babel-python-command "python2")
 '(org-goto-auto-isearch nil)
 '(org-src-preserve-indentation t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(0blayout ace-jump-mode ace-jump-zap ace-window auctex cider
              company-jedi company-restclient deadgrep docker
              docker-tramp electric-spacing elpy epresent evil
              expand-region flycheck helm hide-mode-line htmlize
              indent-tools jedi jedi-direx js2-mode json-mode magit
              markdown-mode ob-restclient org org-plus-contrib
              org-present ox-rst py-autopep8 realgud restclient
              smartparens solarized-theme tagedit transient undo-tree
              use-package web-mode which-key yaml-mode zzz-to-char))
 '(paren-match-face 'paren-face-match-light)
 '(paren-sexp-mode t)
 '(python-mode-hook
   '((lambda nil "Turn off Indent Tabs mode."
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
       (electric-spacing-mode))) t)
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
 '(tool-bar-mode nil)
 '(wdired-allow-to-change-permissions 'advanced)
 '(which-key-idle-delay 2.0)
 '(which-key-idle-secondary-delay 0.5)
 '(window-min-height 8)
 '(window-min-width 40))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "grey50"))))
 '(ediff-even-diff-A ((t (:background "blue1"))))
 '(ediff-even-diff-Ancestor ((t (:background "Blue2"))))
 '(ediff-even-diff-B ((t (:background "Blue3"))))
 '(ediff-even-diff-C ((t (:background "Blue4"))))
 '(ediff-odd-diff-A ((t (:background "purple1"))))
 '(ediff-odd-diff-Ancestor ((t (:background "purple2"))))
 '(ediff-odd-diff-B ((t (:background "purple3"))))
 '(ediff-odd-diff-C ((t (:background "purple4"))))
 '(fringe ((((class color) (background light)) (:background "grey50"))))
 '(highlight-indentation-current-column-face ((t (:background "gray25"))))
 '(highlight-indentation-face ((t (:background "gray12")))))
