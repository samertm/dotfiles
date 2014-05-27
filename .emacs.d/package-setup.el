;; set up packages
(require 'package)

;; custom package-specific functions
(defun samer-get-packages (packages-list)
  (while (car packages-list)
    (if (not (package-installed-p (car packages-list)))
        (package-install (car packages-list)))
    (setq packages-list (cdr packages-list))))

;; set up package repos
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; install packages
(setq packages '(
                 clojure-mode
                 ctags
                 go-mode
                 magit
                 ))
(package-initialize t) ; read packages without loading
(samer-get-packages packages)
(package-initialize)
