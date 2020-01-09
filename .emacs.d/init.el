(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; my customizations

(setenv "PYTHONUNBUFFERED" "x")  ;; needed for windows? running python in comint frame
(setenv "SSH_ASKPASS" "git-gui--askpass")
(global-magit-file-mode t)
(load-library "evil")
(load-library "realgud")
(global-undo-tree-mode)
(require 'helm-config)
(global-set-key [remap dabbrev-expand] 'hippie-expand)
(elpy-enable)
;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
;; Enable autopep8
(require 'py-autopep8)
;;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;;(global-linum-mode)    ;; show line numbers
(global-hl-line-mode) ;; highlight current line of point

(define-key elpy-mode-map [remap previous-error] 'flycheck-previous-error)
(define-key elpy-mode-map [remap next-error] 'flycheck-next-error)

;; C-c C-z starts python interpreter in current project
;; for this, set python-shell-interpreter to path of buildout powerscript exe
;; and python-shell-interpreter-args to ""

(add-hook 'after-make-frame-functions
          (lambda (frame)
            (set-frame-parameter nil 'alpha '(95 . 95))
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
(global-set-key [201326652] (quote beginning-of-buffer-other-window))
(global-set-key [201326654] (quote end-of-buffer-other-window))
;;

(setq split-width-threshold 160
      w32-apps-modifier 'meta)

(global-set-key "\C-\M-z" 'suspend-frame)  ;; because of evil
(global-set-key "\C-x\C-b" 'bs-show)    ;; 'electric-buffer-list
(global-set-key "\C-c\C-v" 'find-file-at-point)
(global-set-key "\C-x\C-f" 'find-file)
(global-set-key "\C-c-" 'shrink-window)
(global-set-key "\C-c+" 'enlarge-window)
(global-set-key "\M-p" 'previous-line)
(global-set-key "\M-n" 'next-line)
(global-set-key "\M-P" 'scroll-down-line)
(global-set-key "\M-N" 'scroll-up-line)
(global-set-key "\M-J" 'ace-jump-char-mode)
;;(global-set-key "\C-x\C-j" 'ace-jump-mode-pop-mark) ;; this is dired-jump
(global-set-key "\C-x\C-z" 'zzz-up-to-char)
(global-set-key [M-up] 'scroll-down-line)
(global-set-key [M-down] 'scroll-up-line)
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

;; js2-JSX
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook 'js2-minor-mode)

;; nxml hide/unhide xml elements (C-c h)
(setq sgml-quick-keys t)
(require 'hideshow)
(require 'sgml-mode)
(require 'nxml-mode)

(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))

(add-hook 'nxml-mode-hook 'hs-minor-mode)

;; optional key bindings, easier than hs defaults
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

;; run shells on windows
(defun run-cmdexe ()
      (interactive)
      (let ((shell-file-name "cmd.exe"))
            (shell "*cmd.exe*")))

(defun run-sdk ()
      (interactive)
      (let ((shell-file-name "c:\\sdk\\win32\\1.1\\scripts\\sdk-shell-vs90.bat"))
            (shell "*sdk*")))

(defun run-bash ()
      (interactive)
      (let ((shell-file-name "c:\\Program Files\\Git\\bin\\bash.exe"))
            (shell "*bash*")))
