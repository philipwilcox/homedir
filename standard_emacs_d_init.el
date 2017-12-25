;; backup in one place. flat, no tree structure
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; setup for installing markdown-mode
;; https://jblevins.org/projects/markdown-mode/
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable"
	       . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Make the default window bigger
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 110))
