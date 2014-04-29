;; general config

(if (>= emacs-major-version 24)
    (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/"))

(setq inhibit-startup-screen t)

(if (equal system-configuration "armv7l-unknown-linux-gnueabihf")
    (set-face-attribute 'default nil :height 130))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'sourcegraph nil 'noerror)

(load "~/.emacs.d/mode-setup" nil t)
(load "~/.emacs.d/custom-functions" nil t)
(load "~/.emacs.d/set-keys" nil t)
(load "~/.emacs.d/hooks" nil t)

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
