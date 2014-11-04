;; set up modes
;; major modes
(add-to-list 'auto-mode-alist '("\\.qml\\'" . javascript-mode))
(setq-default indent-tabs-mode nil
              major-mode 'text-mode)

;; ag
(setq ag-reuse-buffers t)
(defun ag/dwim-at-point () "") ;; turn off this anti-feature.
(setq ag-ignore-list '("Godeps" "assets" "node_modules" "bower_components"))

;; scroll
(setq scroll-preserve-screen-position t)

;; projectile-mode
(projectile-global-mode)
(defun projectile-symbol-at-point () "") ;; turn off this anti-feature.
(setq projectile-find-dir-includes-top-level t)
(setq projectile-switch-project-action 'projectile-find-root-dir)

;; turn off bell
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; sourcegraph-mode
;;(require 'sourcegraph nil 'noerror)

;; guide-key
(setq guide-key/guide-key-sequence '("C-c p" "C-x r"))
(guide-key-mode 1)
(setq guide-key/recursive-key-sequence-flag t)

;; ag
(setq ag-highlight-search t)

;; popwin-mode
(require 'popwin)
(popwin-mode 1)

;; go-mode
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/dougm/goflymake"))
;(require 'go-flycheck)

;; flycheck-mode
(add-hook 'after-init-hook #'global-flycheck-mode)

;; go-eldoc
(require 'go-eldoc)

;; company-mode
(setq company-idle-delay nil)

;; smex
(smex-initialize)

;; save-place
(require 'saveplace)
(setq-default save-place t)

;; ido-mode, flx-ido
(require 'flx-ido)
(setq ido-enable-flex-matching t
      ido-everywhere t
      ido-auto-merge-work-directories-length -1
      ido-create-new-buffer 'always
      ido-default-file-method 'selected-window
      ido-default-buffer-method 'selected-window)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil) 

;; org-mode
(setq org-log-done 'time)
(setq org-directory "~/org/")

;; show-paren-mode
(setq show-paren-delay 0)
(show-paren-mode 1)

;; deft
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-directory "~/org")

;; uniquify
;; (require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; set electric-indent-mode in <= emacs 24.3
; (electric-indent-mode 1)

;; ctags
(require 'ctags)
(setq tags-revert-without-query t)

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

