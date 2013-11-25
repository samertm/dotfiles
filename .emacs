(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(setq inhibit-startup-screen t)

(tool-bar-mode -1)
(menu-bar-mode -1)

(if (equal system-configuration "armv7l-unknown-linux-gnueabihf")
    (set-face-attribute 'default nil :height 100))

(require 'saveplace)
(setq-default save-place t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(column-number-mode t)
(setq ido-create-new-buffer 'always)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "RET") 'newline-and-indent)
(setq show-paren-delay 0)
(show-paren-mode 1)
(setq-default indend-tabs-mode nil)
(setq apropos-do-all t
      auto-save-default nil
      mouse-yank-at-point t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

; For moving windows
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<up>") 'enlarge-window)
(global-set-key (kbd "C-<down>") 'shrink-window-if-larger-than-buffer)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(setq scroll-margin 4)
(setq scroll-conservatively 1)


(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq-default c-basic-offset 2
		indent-tabs-mode nil)
  (local-set-key (kbd "RET") 'newline-and-indent))

(defun my-c++-mode-hook ()
  (c-set-style "linux")
  (setq-default c-basic-offset 4)
  (local-set-key (kbd "RET") 'newline-and-indent))

(defun my-java-mode-hook ()
  (c-set-style "java")
  (setq-default c-basic-offset 4)
  (local-set-key (kbd "RET") 'newline-and-indent))

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


(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'java-mode-hook 'my-java-mode-hook)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes (quote ("54266114287ef8abeda6a3df605deffe777957ba994750da6b8595fe90e932f0" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
