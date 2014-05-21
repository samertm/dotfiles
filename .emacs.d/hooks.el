

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

(defun my-python-mode-hook ()
  (local-set-key (kbd "<RET>") 'newline-and-indent)
  (local-set-key (kbd "C-j") 'newline))

(defun my-scheme-mode-hook ()
  ;(enable-paredit-mode))
  )

(defun my-emacs-lisp-mode-hook ()
  ;(enable-paredit-mode))
  )


(add-hook 'prog-mode-hook 'my-prog-mode-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'java-mode-hook 'my-java-mode-hook)
(add-hook 'org-mode-hook 'my-org-mode-hook)
(add-hook 'python-mode-hook 'my-python-mode-hook)
(add-hook 'scheme-mode-hook 'my-scheme-mode-hook)
(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

(add-hook 'text-mode-hook 'visual-line-mode)
