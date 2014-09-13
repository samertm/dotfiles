;; load functions
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR.

  \(fn arg char)"
  'interactive)

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

(defun samer-mark-whole-line ()
  (interactive)
  (move-beginning-of-line nil)
  (set-mark-command nil)
  (move-end-of-line nil)
  (setq deactivate-mark nil))

(defun samer-mark-line-to-indentation ()
  (interactive)
  (back-to-indentation)
  (set-mark-command nil)
  (move-end-of-line nil)
  (setq deactivate-mark nil))

(defun samer-vim-command-s-o ()
  (interactive)
  (move-beginning-of-line nil)
  (newline)
  (previous-line nil)
  (indent-according-to-mode))

(defun samer-vim-command-o ()
  (interactive)
  (move-end-of-line nil)
  (newline)
  (indent-according-to-mode))

(defun samer-find-file-as-root ()
  "Get file with root privileges.
Like `ido-find-file, but automatically edit the file with
root-privileges (using tramp/sudo), if the file is not writable by
user."
  (interactive)
  (let ((file (ido-read-file-name "Edit as root: ")))
    (unless (file-writable-p file)
      (setq file (concat "/sudo::" file)))
    (find-file file)))

(defun samer-previous-window ()
  (interactive)
  (other-window -1))

;; from http://www.masteringemacs.org/articles/2014/02/28/my-emacs-keybindings/
(defun samer-kill-this-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

(defun samer-new-eshell ()
  (interactive)
  (eshell t))

(defun samer-top-join-line ()
  (interactive)
  (delete-indentation 1))

(defun samer-generate-blog ()
  "Generate my blog."
  (interactive)
  (setq samer-my-shell (start-process "to-blog" "*to blog*" "bash"))
  (process-send-string samer-my-shell "ssh samertm\n")
  (process-send-string samer-my-shell ". virtualenvs/pelican/bin/activate\n")
  (process-send-string samer-my-shell "cd /home/samer/pelican\n")
  (process-send-string samer-my-shell "make html\n")
  (process-send-string samer-my-shell "exit\n")
  (process-send-string samer-my-shell "exit\n")
  (display-buffer "*to blog*" '(display-buffer-pop-up-window . nil)))

(defun samer-subword-mode-on ()
  (interactive)
  (subword-mode 1))
(defun samer-superword-mode-on ()
  (interactive)
  (superword-mode 1))
