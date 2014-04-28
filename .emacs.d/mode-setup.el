(require 'package)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; major modes
(add-to-list 'auto-mode-alist '("\\.qml\\'" . javascript-mode))
(setq-default indent-tabs-mode nil
              major-mode 'text-mode)

(setq load-path (cons "~/go/" load-path))
(require 'go-mode-load nil 'noerror)


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
