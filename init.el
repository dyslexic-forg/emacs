;; Add MELPA to packages archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Packages
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package magit
  :ensure t)

(use-package org
  :ensure t
  :config
  (custom-set-default 'org-directory "~/org/")
  (custom-set-default 'org-agenda-files (list org-directory))
  (add-to-list 'org-modules 'org-habit t)
  (setq org-src-fontify-natively t)
  (setq org-list-allow-alphabetical t)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((python . t))))

(use-package org-download
  :ensure t
  :config
  (setq-default org-download-method 'directory)
  (setq-default org-download-image-dir "./images"))

(use-package eglot
  :ensure t)

(use-package pyvenv
  :ensure t)

(use-package ox-hugo
  :ensure t   ;Auto-install the package from Melpa
  :pin melpa  ;`package-archives' should already have ("melpa" . "https://melpa.org/packages/")
  :after ox)

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

;; Enable IDO (Interactively DO things) everywhere to show completions in minibuffer
(ido-mode 1)
(setq ido-enable-flex-matching t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(org-download ox-hugo pyvenv magit company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
