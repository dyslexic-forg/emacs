;; Add MELPA to packages archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Don't show the splash screen
(setq inhibit-startup-message t)

;; Toggle some ui elements
(tool-bar-mode -1)
(scroll-bar-mode -1)
(display-time-mode 1)

;; Load the Modus Vivendi dark theme
(load-theme 'modus-vivendi)

;; Set the font size
(set-face-attribute 'default nil :height 160)

;; Change (yes or no) prompt to (y or n)
(setq use-short-answers t)

;; Use Company Mode (show drop down list of sugestions) in all buffers
(add-hook 'after-init-hook 'global-company-mode)

;; Enable IDO (Interactively DO things) everywhere to show completions in minibuffer
(ido-mode 1)
(setq ido-enable-flex-matching t)

;; Configure Org Mode
(require 'org)
(custom-set-default 'org-directory "~/org/")
(custom-set-default 'org-agenda-files (list org-directory))
(add-to-list 'org-modules 'org-habit t)
(setq org-src-fontify-natively t) ;; syntax highlight code blocks

;; Set tab to 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-babel-load-languages '((emacs-lisp . t) (python . t)))
 '(package-selected-packages '(lua-mode pyvenv htmlize org eglot magit company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
