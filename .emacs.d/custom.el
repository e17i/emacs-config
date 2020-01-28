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
 '(column-number-mode t)
 '(comint-completion-autolist t)
 '(custom-file "~/.emacs.d/custom.el")
 '(delete-selection-mode t)
 '(dired-recursive-deletes (quote top))
 '(display-time-mode nil)
 '(dynamic-completion-mode nil)
 '(elpy-rpc-python-command "C:\\sdk\\win32\\tools\\Python27\\python.exe")
 '(elpy-syntax-check-command "c:\\sdk\\win32\\tools\\Python27\\Scripts\\flake8.exe")
 '(fill-column 78)
 '(flycheck-python-flake8-executable "c:\\sdk\\win32\\tools\\Python27\\Scripts\\flake8.exe")
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
 '(inhibit-startup-screen t)
 '(isearch-lazy-count t)
 '(jedi:complete-on-dot t)
 '(jedi:setup-keys t)
 '(jedi:tooltip-method nil)
 '(magit-process-find-password-functions (quote (magit-process-password-prompt ignore)))
 '(mouse-drag-copy-region t)
 '(mouse-wheel-scroll-amount (quote (1 ((meta) . 3) ((shift) . text-scale))))
 '(nxml-sexp-element-flag t)
 '(org-agenda-files nil)
 '(org-babel-python-command "python2")
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
    (htmlize ox-rst smartparens tagedit ob-restclient company-restclient restclient py-autopep8 flycheck elpy company-jedi deadgrep magit json-mode evil jedi-direx jedi ace-jump-mode zzz-to-char helm realgud web-mode js2-mode electric-spacing)))
 '(python-mode-hook
   (quote
    ((lambda nil "Turn off Indent Tabs mode."
       (setq indent-tabs-mode nil))
     (lambda nil "Activate jedi"
       (jedi:setup))
     (lambda nil "prepare evil mode"
       (evil-emacs-state))
     (lambda nil "use superword mode"
       (superword-mode)))) t)
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
 '(sp-base-key-bindings (quote sp))
 '(sql-oracle-options (list oracle-startup-script))
 '(svn-status-hide-unmodified t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(wdired-allow-to-change-permissions t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "darkred" :foreground "white")))))
