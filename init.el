;; Add MELPA to packages archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Packages
(use-package lua-mode
  :ensure t)

(use-package helm
  :ensure t
  :config
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (helm-mode 1))

(use-package emacs-everywhere
  :ensure t
  :bind (:map emacs-everywhere-mode-map
	      ("C-c C-c" . emacs-everywhere-finish)))

(use-package rust-mode
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'eglot-ensure))

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package magit
  :ensure t)

(use-package org
  :ensure t
  :config
  (require 'ox-latex)
  (custom-set-default 'org-directory "~/org/")
  (custom-set-default 'org-agenda-files (list org-directory))
  (add-to-list 'org-modules 'org-habit t)
  (setq org-src-fontify-natively t)
  (setq org-list-allow-alphabetical t)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((python . t)
     (scheme . t)
     (C . t))))

(use-package org-download
  :ensure t
  :after org
  :config
  (setq-default org-download-method 'directory)
  (setq-default org-download-image-dir "./images"))

(use-package htmlize
  :ensure t
  :after org)

(use-package eglot
  :ensure t)

(use-package pyvenv
  :ensure t)

(use-package ox-hugo
  :ensure t   ;Auto-install the package from Melpa
  :pin melpa  ;`package-archives' should already have ("melpa" . "https://melpa.org/packages/")
  :after ox)

(use-package pdf-tools
  :ensure t)

(use-package auctex
  :ensure t)

(use-package geiser-racket
  :ensure t)

(use-package gdscript-mode
  :ensure t
  :hook (gdscript-mode . eglot-ensure)
  :custom (gdscript-eglot-version 4))

;; Show recent files
(recentf-mode 1)

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


;; Automatically close parentheses
(electric-pair-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-export-backends '(ascii beamer html icalendar latex odt))
 '(package-selected-packages
   '(helm lua-mode ido-vertical-mode vertico rust-mode gdscript-mode geiser-racket htmlize auctex auc-tex pdf-tools org-download ox-hugo pyvenv magit company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
