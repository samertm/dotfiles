;; set up modes
;; major modes
(add-to-list 'auto-mode-alist '("\\.qml\\'" . javascript-mode))
(setq-default indent-tabs-mode nil
              major-mode 'text-mode)

;; save-place
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
(setq uniquify-buffer-name-style 'forward)

;; set electric-indent-mode in <= emacs 24.3
(if-gteq-24-4 nil (if (>= emacs-major-version 24)
                      (electric-indent-mode 1)))

;; ctags
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
(if-gteq-24-4 (superword-mode))
