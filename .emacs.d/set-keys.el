;; set keys
(global-set-key (kbd "C-c C-a") 'samer-mark-line-to-indentation)
(global-set-key (kbd "C-c M-m") 'samer-mark-whole-line)
(global-set-key (kbd "C-M-o") 'samer-vim-command-s-o)
(global-set-key (kbd "C-o") 'samer-vim-command-o)
(global-set-key (kbd "C-x F") 'samer-find-file-as-root)
(global-set-key (kbd "C-x O") 'samer-previous-window)
(global-set-key (kbd "C-x k") 'samer-kill-this-buffer)
(global-set-key (kbd "C-^") 'samer-top-join-line)
(global-set-key (kbd "C-c b") 'samer-generate-blog)

(global-set-key (kbd "C-c u") 'samer-subword-mode-on)
(global-set-key (kbd "C-c i") 'samer-superword-mode-on)

;; so fat
(global-set-key (kbd "C-c C-c C-o") 'other-frame)
(global-set-key (kbd "C-c C-c o") 'other-frame)
(global-set-key (kbd "C-c c C-o") 'other-frame)
(global-set-key (kbd "C-c c o") 'other-frame)

;; fat-finger
(global-set-key (kbd "C-x C-r") 'eval-last-sexp)
(global-set-key (kbd "C-c C-e") 'eval-last-sexp)

(global-set-key (kbd "C-c C-r") 'recompile)

(global-set-key (kbd "C-c C-s C-M-s") 'hs-show-all)
(global-set-key (kbd "C-c C-s C-M-h") 'hs-hide-all)
(global-set-key (kbd "C-c C-s C-c") 'hs-toggle-hiding)
(global-set-key (kbd "C-c C-s C-h") 'hs-hide-block)
(global-set-key (kbd "C-c C-s C-l") 'hs-hide-level)
(global-set-key (kbd "C-c C-s C-s") 'hs-show-block)

(global-set-key (kbd "C-c C-m") 'make-directory)

(global-set-key (kbd "C-c M-n") 'company-complete)
(global-set-key (kbd "C-c C-n") 'company-complete)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "<f8>") 'deft)

(global-set-key (kbd "C-c C-SPC") 'ace-jump-mode)

(global-set-key (kbd "M-/") 'hippie-expand)

(global-set-key (kbd "C-x C-m") 'eshell)
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M") 'samer-new-eshell)

(global-set-key (kbd "C-x g") 'magit-status)

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

;; make C-x b and C-x C-b the same
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

;; exchange zap-to-char for zap-up-to-char
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "C-M-z") 'zap-to-char)

;; ctags
(global-set-key (kbd "<f7>") 'ctags-create-or-update-tags-table)
(global-set-key (kbd "M-.")  'ctags-search)

(if (< emacs-major-version 24)
    (global-set-key (kbd "RET") 'newline-and-indent)) ; in place of electric-indent

;; windmove keys
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<up>") 'enlarge-window)
(global-set-key (kbd "C-<down>") 'shrink-window-if-larger-than-buffer)
