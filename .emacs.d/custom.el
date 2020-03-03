(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(blink-cursor-mode nil)
 '(buffers-menu-show-directories t)
 '(c-basic-offset 2)
 '(column-number-mode t)
 '(comint-completion-autolist t)
 '(custom-file "~/.emacs.d/custom.el")
 '(default-input-method "german-postfix")
 '(delete-selection-mode t)
 '(dired-recursive-deletes (quote top))
 '(display-buffer-alist
   (quote
    ((dired-to-other-window make-buffer-window-origin)
     (dired-from-other-window
      (display-buffer-maybe-in-orig))
     ("\\*Occur\\*" make-buffer-window-origin)
     ((lambda
        (buffer alist)
        (match-current-buffer "\\\\*Occur\\\\*"))
      display-buffer-in-orig)
     ("\\*Help\\*\\|\\*Apropos\\*"
      (display-buffer-as-scroll-buffer display-buffer-dedicated-window display-buffer-reuse-help display-buffer-at-bottom)
      (window-height . fit-window-to-buffer-max-half-frame)))))
 '(display-buffer-base-action
   (quote
    ((display-buffer-maybe-as-scroll-buffer display-buffer-dedicated-window display-buffer--maybe-same-window display-buffer-reuse-window display-buffer--maybe-pop-up-frame-or-window display-buffer-in-previous-window display-buffer-below-selected display-buffer-pop-up-frame))))
 '(display-time-24hr-format t)
 '(display-time-default-load-average nil)
 '(display-time-mode nil)
 '(doc-view-ghostscript-program "c:/Program Files/gs/gs9.50/bin/gswin64c.exe")
 '(dynamic-completion-mode nil)
 '(ediff-before-setup-hook
   (quote
    ((lambda nil
       (window-configuration-to-register 101)))))
 '(ediff-custom-diff-program "C:\\\\ProgramData\\\\chocolatey\\\\bin\\\\diff.exe")
 '(ediff-diff-program "C:\\\\ProgramData\\\\chocolatey\\\\bin\\\\diff.exe")
 '(ediff-diff3-program "C:\\\\ProgramData\\\\chocolatey\\\\bin\\\\diff3")
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
 '(elpy-rpc-python-command "C:\\sdk\\win32\\tools\\Python27\\python.exe")
 '(elpy-syntax-check-command "c:\\sdk\\win32\\tools\\Python27\\Scripts\\flake8.exe")
 '(enter-maximize-frame-hook
   (quote
    ((lambda nil
       (display-time-mode 1))
     (lambda nil
       (set-scroll-bar-mode nil))
     (lambda nil
       (switch-frame-transparency nil))
     toggle-menu-bar-mode-from-frame)))
 '(evil-default-state (quote emacs))
 '(evil-insert-state-modes nil)
 '(evil-motion-state-modes nil)
 '(exit-maximize-frame-hook
   (quote
    ((lambda nil
       (display-time-mode 0))
     (lambda nil
       (set-scroll-bar-mode
        (quote right)))
     (lambda nil
       (switch-frame-transparency
        (quote t)))
     toggle-menu-bar-mode-from-frame)))
 '(fill-column 78)
 '(flycheck-python-flake8-executable "c:\\sdk\\win32\\tools\\Python27\\Scripts\\flake8.exe")
 '(frame-auto-hide-function (function delete-frame))
 '(frame-icon-title-format
   (quote
    (((quote buffer-name)
      "%b")
     " || " system-name " || "
     ((quote buffer-name)
      "%f"))) t)
 '(frame-title-format
   (quote
    (((quote buffer-name)
      "%b")
     " || " system-name " || "
     ((quote buffer-name)
      "%f"))) t)
 '(fringe-mode (quote (5 . 5)) nil (fringe))
 '(hippie-expand-verbose nil)
 '(history-delete-duplicates t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(isearch-lazy-count t)
 '(jedi:complete-on-dot t)
 '(jedi:setup-keys t)
 '(jedi:tooltip-method nil)
 '(magit-process-find-password-functions (quote (magit-process-password-prompt ignore)))
 '(mouse-drag-and-drop-region t)
 '(mouse-drag-copy-region t)
 '(mouse-wheel-scroll-amount (quote (1 ((meta) . 3) ((shift) . text-scale))))
 '(my-env-actions
   (quote
    ((mouse-wheel-zoom my-wheel-zoom my-env-reset-keymap)
     (mouse-undo mouse-undo my-env-reset-keymap)
     (german-kbd activate-german-keymap my-env-reset-keymap)
     (windows-trackpad windows-trackpad reset-windows-trackpad)
     (battery
      (lambda nil
        (display-battery-mode 1))
      (lambda nil
        (display-battery-mode 0))))))
 '(my-env-definitions
   (quote
    ((68
      (mouse-wheel-zoom mouse-undo))
     (77
      (german-kbd windows-trackpad battery)))))
 '(my-environment-mode t)
 '(my-frame-stylings
   (quote
    (frame-width-below-threshold frame-height-dec frame-to-left frame-to-top)))
 '(my-frame-transparency 92)
 '(nxml-sexp-element-flag t)
 '(org-agenda-files nil)
 '(org-babel-python-command "python2")
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . emacs))))
 '(org-goto-auto-isearch nil)
 '(org-src-preserve-indentation t)
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (which-key markdown-mode+ markdown-mode htmlize ox-rst smartparens tagedit ob-restclient company-restclient restclient py-autopep8 flycheck elpy company-jedi deadgrep magit json-mode evil jedi-direx jedi ace-jump-mode zzz-to-char helm realgud web-mode js2-mode electric-spacing)))
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
     (lambda nil "use electric spacing mode"
       (electric-spacing-mode)))) t)
 '(python-shell-interpreter "C:\\\\sdk\\\\win32\\\\tools\\\\Python27\\\\python.exe")
 '(python-shell-interpreter-args "")
 '(realgud:pdb-command-name "/sqlite/bin/powerscript -m pdb")
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode (quote right))
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
 '(transient-mark-mode t)
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
