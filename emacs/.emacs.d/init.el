;; Fix TLS error in 26.x
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Disable annoying startup message
(setq inhibit-startup-message t)

;; Disable scrollbar.
(scroll-bar-mode -1)

;; Disable toolbar.
(tool-bar-mode -1)

;; Disable tooltips.
(tooltip-mode -1)

;; Make the left and right fringes 15px wide.
(set-fringe-mode '(10 . 10))

;; Disable the menu bar.
(menu-bar-mode -1)

;; Set up the visible bell.
(setq visible-bell t)

;; Line and column numbers.
(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Configure fonts.
(set-face-attribute 'default nil :font "Iosevka Medium" :height 120)

;; Configure location for tilde files
(setq backup-directory-alist `(("." . "~/.cache/emacs")))

;; Configure theme (disables in favor of doom-themes).
; (load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources.
(require 'package)						     ; require the package package
(setq package-archives '(("melpa" . "https://melpa.org/packages/")   ; list of archives to fetch packages from
			 ("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)			; initializes and prepares the package package
(unless package-archive-contents	; refresh package list unless one already exists on this machine
  (package-refresh-contents))

;; Initialize use-package, unless it is already installed.
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a82ab9f1308b4e10684815b08c9cac6b07d5ccb12491f44a942d845b406b0296" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "7eea50883f10e5c6ad6f81e153c640b3a288cd8dc1d26e4696f7d40f754cc703" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "0d01e1e300fcafa34ba35d5cf0a21b3b23bc4053d388e352ae6a901994597ab1" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" default))
 '(display-line-numbers-width 3)
 '(global-command-log-mode t)
 '(ivy-mode t)
 '(package-selected-packages
   '(lsp-mode nyan-mode flycheck company evil-commentary editorconfig tree-sitter-langs tree-sitter typescript-mode spinner evil-surround diminish rainbow-delimiters which-key doom-themes evil doom-modeline ivy command-log-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Packages
(use-package diminish)

(use-package ivy
  :diminish ivy-mode
  :bind (:map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :init
  (ivy-mode 1))

(use-package nyan-mode
  :config
  (setq nyan-animate-nyancat t
	nyan-wavy-trail t)
  :init
  (nyan-mode 1)
  (nyan-start-animation))

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-ephemeral t)
  (doom-themes-visual-bell-config))

(use-package evil
  :bind
  (:map evil-normal-state-map
	("SPC SPC" . find-file)
	("SPC ," . ivy-switch-buffer)
	("SPC q" . evil-quit)
	("SPC w" . evil-write)
	("SPC x" . execute-extended-command)
	("SPC k" . kill-buffer)
	("s" . nil)
	("ss" . evil-window-split)
	("sv" . evil-window-vsplit)
	("so" . delete-other-windows)
	("sh" . evil-window-left)
	("sj" . evil-window-down)
	("sk" . evil-window-up)
	("sl" . evil-window-right)
	("t" . nil)
	("tc" . tab-bar-new-tab)
	("tk" . tab-bar-close-tab)
	("th" . tab-bar-switch-to-prev-tab)
	("tl" . tab-bar-switch-to-next-tab))
  (:map evil-insert-state-map
	("<tab>" . company-complete-selecion)
	("C-n" . company-select-next)
	("C-p" . company-select-previous))
  :init
  (evil-mode 1))

(use-package evil-surround
  :diminish evil-surround-mode
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary
  :diminish evil-commentary-mode
  :config
  (evil-commentary-mode 1))

(use-package rainbow-delimiters
  :diminish rainbow-delimiters-mode
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3)
  :init
  (which-key-mode 1))

(use-package editorconfig
  :diminish editorconfig-mode
  :config
  (editorconfig-mode 1))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-l")
  (setq lsp-auto-guess-root nil)
  :config
  (lsp-enable-which-key-integration t))

(use-package flycheck
  :diminish flycheck-mode
  :hook
  (lsp-mode . flycheck-mode))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred))

(use-package company
  :diminish company-mode
  :after lsp-mode
  :hook
  (lsp-mode . company-mode)
  :bind
  (:map company-active-map
	("<tab>" . nil)
	("<tab>" . company-complete-selecion)
	("C-n" . nil)
	("C-n" . company-select-next)
	("C-p" . nil)
	("C-p" . company-select-previous))
  (:map lsp-mode-map
	("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))
