;; general config

(if (>= emacs-major-version 24)
    (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/"))

(if (not (file-exists-p "~/org/"))
    (make-directory "~/org"))

(setq inhibit-startup-screen t
      initial-buffer-choice "~/org/notes.org")

(if (equal system-configuration "armv7l-unknown-linux-gnueabihf")
    (set-face-attribute 'default nil :height 100))

;; major modes
(add-to-list 'auto-mode-alist '("\\.qml\\'" . javascript-mode))
(setq-default indent-tabs-mode nil
              major-mode 'text-mode)

;; gui modes
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)

;; save-place
(require 'saveplace)
(setq-default save-place t)

;; ido-mode
(setq ido-enable-flex-matching t
      ido-everywhere t
      ido-create-new-buffer 'always)
(ido-mode 1)

;; org-mode
(setq org-log-done 'time)
(setq org-directory "~/org/")

;; show-paren-mode
(setq show-paren-delay 0)
(show-paren-mode 1)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; electric-indent-mode
(if (>= emacs-major-version 24)
    (electric-indent-mode 1))

;; misc config
(defalias 'yes-or-no-p 'y-or-n-p)
(setq apropos-do-all t
      sentence-end-double-space nil
      ;; scroll
      scroll-margin 4
      scroll-conservatively 1

      mouse-yank-at-point t
      ;; saving
      auto-save-default nil
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))


;; custom functions

(defun kill-control-block ()
  (interactive)
  (search-backward-regexp "\\(if\\|while\\|for\\|else\\|do\\)")
  (let ((beg (point)))
    (search-forward-regexp "{")
    (delete-region beg (point))
    (search-forward-regexp "}")
    (delete-char -1)
    (indent-region beg (point))
    (goto-char beg)))

(defun console-log-debug ()
  (interactive)) ;do this when I'm less tired @_@

(defun mark-whole-line ()
  (interactive)
  (move-beginning-of-line nil)
  (set-mark-command nil)
  (move-end-of-line nil)
  (setq deactivate-mark nil))

(defun mark-line-to-indentation ()
  (interactive)
  (back-to-indentation)
  (set-mark-command nil)
  (move-end-of-line nil)
  (setq deactivate-mark nil))

(defun vim-command-s-o ()
  (interactive)
  (move-beginning-of-line nil)
  (newline)
  (previous-line nil)
  (indent-according-to-mode))

(defun vim-command-o ()
  (interactive)
  (move-end-of-line nil)
  (newline)
  (indent-according-to-mode))
  
;; set keys
(global-set-key (kbd "C-c C-a") 'mark-line-to-indentation)
(global-set-key (kbd "C-c M-m") 'mark-whole-line)
(global-set-key (kbd "C-M-o") 'vim-command-s-o)
(global-set-key (kbd "C-o") 'vim-command-o)

(global-set-key (kbd "C-x C-d") 'ido-dired)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'shell-command)

(global-set-key (kbd "C-c r") 'replace-regexp)
(global-set-key (kbd "C-c q r") 'query-replace-regexp)

(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "M-m") 'move-beginning-of-line)

(global-set-key (kbd "C-c C-j") 'imenu)

(if (< emacs-major-version 24)
    (global-set-key (kbd "RET") 'newline-and-indent)) ;; in place of electric-indent

;; windmove keys
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<up>") 'enlarge-window)
(global-set-key (kbd "C-<down>") 'shrink-window-if-larger-than-buffer)


;; custom hooks
(defun my-prog-mode-hook ()
  (setq-default indent-tabs-mode nil)
  (local-set-key (kbd "C-a") 'back-to-indentation)
  (local-set-key (kbd "M-m") 'move-beginning-of-line))

(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq-default c-basic-offset 2))

(defun my-c++-mode-hook ()
  (c-set-style "linux")
  (setq c-basic-offset 4))

(defun my-java-mode-hook ()
  (c-set-style "java")
  (setq-default c-basic-offset 4))

(defun my-org-mode-hook ()
  (if (>= emacs-major-version 24)
      (electric-indent-mode 0)))


(add-hook 'prog-mode-hook 'my-prog-mode-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'java-mode-hook 'my-java-mode-hook)
(add-hook 'org-mode-hook 'my-org-mode-hook)

(add-hook 'text-mode-hook 'visual-line-mode)


;; idea: function to separate unfinished from finished todos

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
