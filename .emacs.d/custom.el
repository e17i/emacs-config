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
 '(elpy-rpc-virtualenv-path 'default)
 '(evil-default-state 'emacs)
 '(evil-insert-state-modes nil)
 '(evil-motion-state-modes nil)
 '(exec-path '("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/pkg/bin"))
 '(frame-auto-hide-function #'delete-frame)
 '(fringe-mode 0 nil (fringe))
 '(help-buffer-regex
   "\\*Help\\*\\|\\*Apropos\\*\\|\\*Python Doc\\*\\|\\*jedi:doc\\*")
 '(hippie-expand-verbose nil)
 '(history-delete-duplicates t)
 '(indent-tabs-mode nil)
 '(isearch-lazy-count t)
 '(magit-git-executable "/usr/pkg/bin/git")
 '(menu-bar-mode nil)
 '(mouse-drag-and-drop-region t)
 '(mouse-drag-copy-region t)
 '(mouse-wheel-flip-direction t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(1 ((meta) . 3) ((shift) . text-scale)))
 '(mouse-wheel-tilt-scroll t)
 '(my-env-actions
   '((mouse-wheel-zoom my-wheel-zoom my-env-reset-keymap)
     (mouse-undo mouse-undo my-env-reset-keymap)
     (mouse-yank mac-mouse-yank my-env-reset-keymap)
     (german-kbd activate-german-keymap my-env-reset-keymap)
     (apple-kbd on-apple-keyboard ignore)
     (pc-kbd on-pc-keyboard ignore)
     (use-super-as-ctl-x use-super-as-ctl-x ignore)))
 '(my-env-definitions '((68 (mouse-undo mouse-yank use-super-as-ctl-x)) (77 (german-kbd))))
 '(my-environment-mode t)
 '(my-frame-background "NavajoWhite3")
 '(my-frame-foreground "Black")
 '(my-frame-stylings '(frame-width-half-plus frame-to-left frame-to-top))
 '(my-frame-transparency 85)
 '(nxml-sexp-element-flag t)
 '(org-agenda-files nil)
 '(org-babel-python-command "python")
 '(org-goto-auto-isearch nil)
 '(org-html-postamble t)
 '(org-html-postamble-format
   '(("en" "<p class=\"author\">Author: %a
(Reddit: <a href=\"https://www.reddit.com/user/e17i\">u/e17i</a>)</p> <p>Made on
emacs org-mode with <a href=\"https://jessekelly881-rethink.surge.sh/\">Rethink</a></p>")))
 '(org-src-preserve-indentation t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(jedi py-autopep8 elpy flycheck exwm nameless ement mastodon expand-region indent-tools yaml-mode tagedit undo-tree which-key zzz-to-char htmlize smartparens magit ace-jump-zap helm realgud evil auctex))
 '(paren-match-face 'paren-face-match-light)
 '(paren-sexp-mode t)
 '(python-environment-virtualenv
   '("~joergk/.local/bin/virtualenv" "--system-site-packages" "--quiet"))
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
       (indent-tools-minor-mode))) t)
 '(python-shell-interpreter "python3.11")
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 6)
 '(select-enable-clipboard t)
 '(sentence-end-double-space nil)
 '(server-mode t)
 '(sgml-xml-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(sp-base-key-bindings nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(undo-tree-auto-save-history nil)
 '(undo-tree-enable-undo-in-region t)
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
 '(highlight-indentation-current-column-face ((t (:background "burlywood3"))))
 '(highlight-indentation-face ((t (:background "burlywood")))))
;; '(package-selected-packages
;;   '(smartparens tagedit ob-restclient company-restclient restclient py-autopep8 flycheck elpy company-jedi json-mode jedi-direx jedi ox-rst magit zzz-to-char ace-jump-mode helm realgud evil markdown-mode cider web-mode org-plus-contrib js2-mode electric-spacing auctex))
