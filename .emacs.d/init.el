;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-path
      (append '(
                "~/.emacs.d/config"
                ) load-path))
(load "00default.el")
(load "01helm.el")
(load "02flycheck.el")
(load "03rainbow-delimiters.el")
;;(load "04yatex.el")
(load "05undohist.el")
(load "06anzu.el")
(load "07sr-speedbar.el")
(load "08powerline.el")
(load "09web-mode.el")
(load "10point-undo.el")
(load "11undo-tree.el")
(load "12ispell.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (flycheck-clang-analyzer point-pos undo-tree 0blayout web-mode powerline sr-speedbar anzu undohist yatex rainbow-delimiters flycheck helm-ebdb))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "ricty" :foundry "ricty" :font "ricty" :slant normal :weight normal :height 136 :width normal)))))
