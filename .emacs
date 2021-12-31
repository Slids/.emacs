(require 'package)
(require 'slime-autoloads)

(setq-default indent-tabs-mode nil)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; (package-initialize)
(load-theme 'tsdh-dark t)

(defvar *lisp-v* :abcl)

(setq inferior-lisp-program
      (cond
       ((eq *lisp-v* :sbcl) "sbcl")
       ((eq *lisp-v* :abcl) "~/lisps/abcl/abcl")
       ((eq *lisp-v* :ccl) "~/lisps/ccl/ccl/lx86cl64"))
      slime-contribs
      '(slime-scratch slime-editing-commands
                      slime-fancy slime-cl-indent))

;; (put 'erase-buffer 'disabled nil)

(add-hook 'before-save-hook 'whitespace-cleanup)
(show-paren-mode 1) ;; Show-paren mode (very spiffy)
(menu-bar-mode -1)
(global-set-key "\C-xl" 'slime)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (dylan slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
