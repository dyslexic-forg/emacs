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
  (require 'org)
  (custom-set-default 'org-directory "~/org/")
  (custom-set-default 'org-agenda-files (list org-directory))
  (add-to-list 'org-modules 'org-habit t)
  (setq org-src-fontify-natively t))

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

;; Enable IDO (Interactively DO things) everywhere to show completions in minibuffer
(ido-mode 1)
(setq ido-enable-flex-matching t)
