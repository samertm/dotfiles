;; general config

;; suppress gui & startup
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)

;; for chromebook
(if (equal system-configuration "armv7l-unknown-linux-gnueabihf")
    (set-face-attribute 'default nil :height 130))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(load "~/.emacs.d/package-setup" nil t)

(require 'sourcegraph nil 'noerror)
(require 'uniquify)
(require 'saveplace)
(require 'ctags)

(load "~/.emacs.d/custom-functions" nil t)
(load "~/.emacs.d/mode-setup" nil t)
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
