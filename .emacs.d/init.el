
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(buffers-menu-show-directories t)
 '(column-number-mode t)
 '(comint-completion-autolist t)
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
 '(isearch-lazy-count t)
 '(magit-git-executable "/opt/local/bin/git")
 '(mouse-drag-copy-region t)
 '(mouse-wheel-scroll-amount '(1 ((shift) . 5) ((control))))
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
   '(ox-rst magit zzz-to-char ace-jump-mode helm realgud evil markdown-mode cider web-mode org-plus-contrib js2-mode electric-spacing auctex))
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
 '(sql-oracle-options (list oracle-startup-script))
 '(svn-status-hide-unmodified t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "darkred" :foreground "white")))))

;; my customizations added manually
(add-hook 'after-make-frame-functions
         (lambda (frame)
           (set-frame-parameter nil 'alpha '(90 . 90))
           (with-selected-frame frame
             (set-background-color "Black")
             (set-foreground-color "Green")
           )))
(run-hook-with-args 'after-make-frame-functions (selected-frame))

;; convenience functions handling other window
(defun go-back-other-window ()
  "Go back to previous help topic in other window."
  (interactive)
  (with-current-buffer (window-buffer (next-window))
    (help-go-back)))

(defun quit-restore-other-window ()
  "Quit other window and deal with its buffer, possibly restoring
the buffer previously displayed in other window."
  (interactive)
  (quit-restore-window (next-window)))

(global-set-key "\C-x4q" 'quit-restore-other-window)
(global-set-key "\C-x4l" 'go-back-other-window)
;; whats this? we want to jump to beginning/end in other buffer by C-M-< and C-M->
;; how to get here? M-x global-set-key RET C-M-< beg.. then C-x ESC ESC and copy the
;; resulting parametrized command from minibuffer
(global-set-key [201326652] (quote beginning-of-buffer-other-window))
(global-set-key [201326654] (quote end-of-buffer-other-window))
;;

(setenv "PATH" (concat "/opt/local/bin:/opt/local/sbin:" (getenv "PATH")))

(load-file "~/.emacs.d/keyboard-pc.el")
;; (setq split-width-threshold 999)
(setq org-element-use-cache nil)  ;; temporarily disable org element cache
(load-library "realgud")
(global-undo-tree-mode)
(require 'helm-config)
(require 'ox-rst)
(global-set-key [remap dabbrev-expand] 'hippie-expand)
(setq erc-autojoin-channels-alist '(("freenode.net" "#latex-de" "##latinitas" "#NetBSD" "##bash-de" "#git" "#vim" "#emacs" "#erc" "#oberon" "#macosx")))

(tool-bar-mode 0)

(global-set-key "\C-x\C-b" 'bs-show)	;; electric-buffer-list
(global-set-key "\C-c\C-v" 'find-file-at-point)
(global-set-key "\C-x\C-f" 'find-file)
(global-set-key "\C-c-" 'shrink-window)
(global-set-key "\C-c+" 'enlarge-window)
(global-set-key "\M-p" 'previous-line)
(global-set-key "\M-n" 'next-line)
(global-set-key "\M-P" 'scroll-down-line)
(global-set-key "\M-N" 'scroll-up-line)
(global-set-key "\M-J" 'ace-jump-char-mode)
;;;(global-set-key "\C-x\C-j" 'ace-jump-mode-pop-mark) ;; this is dired-jump
(global-set-key "\C-x\C-z" 'zzz-up-to-char)
;; for mac: select: mouse-1, copy/cut: mouse-3, yank: M-mouse-2, undo: M-mouse-3
(global-set-key [M-mouse-2] 'mouse-yank-at-click)
(global-set-key [M-mouse-3] 'undo)
(global-set-key [M-up] 'scroll-down-line)
(global-set-key [M-down] 'scroll-up-line)
(global-set-key [end] 'move-end-of-line)
(global-set-key [home] 'move-beginning-of-line)

(setq c-basic-offset 2)
(setq indent-tabs-mode nil)

;; C++ mode customization
(add-hook 'c-mode-common-hook
          (function
           (lambda ()
             (c-toggle-auto-hungry-state 1)
             (c-set-style "Stroustrup")
	     (setq c-basic-offset 2)
             (setq c-hanging-braces-alist '((brace-list-open)
                                            (brace-list-close after)
                                            (defun-open after)
                                            (class-open after)
                                            (inline-open after)
                                            (substatement-open after))))))

;; python mode customization
(defun python-mode-untabify ()
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward "[ \t]+$" nil t)
        (delete-region (match-beginning 0) (match-end 0)))
      (goto-char (point-min))
      (if (search-forward "\t" nil t)
          (untabify (1- (point)) (point-max))))
    nil)

;;(add-hook 'python-mode-hook
;;            '(lambda ()
;;               (make-local-variable 'write-contents-hooks)
;;               (add-hook 'write-contents-hooks 'python-mode-untabify)))

;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-command "/Users/jko/Programming/node/node_modules/.bin/md2html")

;; js2-JSX
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook 'js2-minor-mode)

;; nxml hide/unhide xml elements (C-c h)
(require 'hideshow)
(require 'sgml-mode)
(require 'nxml-mode)

(add-to-list 'hs-special-modes-alist
	     '(nxml-mode
	       "<!--\\|<[^/>]*[^/]>"
	       "-->\\|</[^/]*[^/]>"

	       "<!--"
	       sgml-skip-tag-forward
	       nil))

(add-hook 'nxml-mode-hook 'hs-minor-mode)

;; optional key bindings, easier than hs defaults
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)