
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
 '(column-number-mode t)
 '(exec-path
   '("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/MacPorts/Emacs.app/Contents/MacOS/bin" "/opt/local/bin"))
 '(fringe-mode 0 nil (fringe))
 '(gud-mixvm-command-name "/opt/local/bin/mixvm")
 '(mac-emulate-three-button-mouse t)
 '(mouse-drag-copy-region t)
 '(ns-alternate-modifier 'altername)
 '(ns-command-modifier 'meta)
 '(ns-control-modifier 'control)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")))
 '(package-selected-packages '(realgud evil org auctex))
 '(paren-match-face 'paren-face-match-light)
 '(paren-sexp-mode t)
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "grey50"))))
 '(fringe ((((class color) (background light)) (:background "grey50")))))

;; my customizations
(load-library "realgud")
(global-undo-tree-mode)
(setenv "PATH" "/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/usr/X11/bin")
;;(set-background-color "ARGBccffffff")
(add-hook 'after-make-frame-functions
	  (lambda (frame)
	    (set-frame-parameter frame 'alpha '(85 . 85))
	    (with-selected-frame frame
	      (set-background-color "Black")
	      (set-foreground-color "Green"))
	    ))
(run-hook-with-args 'after-make-frame-functions (selected-frame))
;;(require 'ns-platform-support)
;;(ns-extended-platform-support-mode)
(define-key global-map [ns-drag-file] 'ns-find-file)

(defun maximize-frame () 
  (interactive)
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 1000 1000))
(global-set-key (kbd "<M-S-return>") 'maximize-frame)

(global-set-key [(wheel-down)] (lambda()(interactive)(scroll-up 3)))
(global-set-key [(wheel-up)] (lambda()(interactive)(scroll-down 3)))
(global-set-key (kbd "<M-down>") 'scroll-up-line)
(global-set-key (kbd "<M-up>") 'scroll-down-line)
;;(global-set-key "\A-SPC" 'set-mark-command)
(global-set-key "\M-p" 'scroll-down-line)
(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-J" 'end-of-buffer)
(global-set-key "\M-K" 'beginning-of-buffer)
(global-set-key "\M-H" 'previous-buffer)
(global-set-key "\M-L" 'next-buffer)
(global-set-key "\C-x\C-b" 'electric-buffer-list)
(global-set-key "\C-c\C-v" 'find-file-at-point)
(global-set-key [(f1)] (lambda()(interactive)(manual-entry (current-word))))
(global-set-key "\C-x\C-f" 'find-file)
(global-set-key "\C-c+" 'enlarge-window)
(global-set-key "\C-c-" 'shrink-window)
(global-set-key (kbd "<s-mouse-1>") 'mouse-yank-at-click)
(setq gc-cons-threshold 1000000)
;;(setq inhibit-startup-message t)
;; visible bell workaround for el capitan
;;(setq visible-bell t)
(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)
;; end of workaround
(setq c-basic-offset 2)
;;(standard-display-european 1)
;;(require 'iso-syntax)
(server-start)

;; etags
(global-set-key "\C-ct" 'tag-complete-symbol)
(global-set-key "\C-cs" 'tags-search)
(global-set-key "\C-cr" 'tags-query-replace)
(defun my-generate-etags ()
  (interactive)
  (let* ((dir (read-string "project: "))
	 (cctarget (concat "../" dir "/*.cc"))
	 (hhtarget (concat "../" dir "/*.hh"))
	 (ctarget (concat "../" dir "/*.c"))
	 (htarget (concat "../" dir "/*.h")))
    (shell-command (concat "etags -a " cctarget " " hhtarget " " ctarget " " htarget " >/dev/null") nil)
    )
  )
(global-set-key "\C-ci" 'my-generate-etags)

(put 'eval-expression 'disabled nil)
(global-set-key "\C-cc" 'compile)
(global-set-key "\C-cn" 'next-error)
(global-set-key "\C-cl" 'goto-line)

;; add hooks for auto fill
;;
(add-hook 'fundamental-mode-hook
	  (lambda () (auto-fill-mode 1)))
(add-hook 'text-mode-hook
	  (lambda () (auto-fill-mode 1)))

;; calendar/diary
(setq view-diary-entries-initially t)
(setq view-calendar-holidays-initially t)
(setq mark-diary-entries-in-calendar t)
(setq mark-holidays-in-calendar t)

;; C++ mode customization
;;(defun my-c++-hook () 
;;  (outline-minor-mode)
;;  (make-local-variable 'outline-regexp)
;;  (setq outline-regexp "[ \t]*// -+ "))
;;(add-hook 'c++-mode-hook 'my-c++-hook)
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
(autoload 'c++-mode   "cc-mode" "C++ Editing Mode" t)
(autoload 'c-mode "cc-mode" "C Editing Mode" t)
(setq auto-mode-alist
      (append '(("\\.C$"  . c++-mode)
                ("\\.cc$" . c++-mode)
                ("\\.m$" . objc-mode)
                ("\\.c$"  . c-mode)   ; to edit C code
                ("\\.h$"  . c-mode)   ; to edit C code
                ) auto-mode-alist))

(put 'narrow-to-region 'disabled nil)
(setq minibuffer-max-depth nil)


;; pov ray
(setq load-path (cons "~/.emacs.d/lisp" load-path))
(autoload 'pov-mode "pov-mode.el" "PoVray scene file mode" t)
(setq auto-mode-alist
      (append '(("\\.pov$" . pov-mode)
		("\\.inc$" . pov-mode)
		) auto-mode-alist))
(setq pov-indent-level '2)

;; MIX (GNU MDK)
(setq load-path (cons "/opt/local/share/mdk" load-path))
(autoload 'mixal-mode "mixal-mode" t)
(add-to-list 'auto-mode-alist '("\\.mixal\\'" . mixal-mode))
(autoload 'mixvm "mixvm" "mixvm/gud interaction" t)

;; markdown-mode.el
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
