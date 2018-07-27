;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (0blayout web-mode powerline sr-speedbar anzu undohist yatex rainbow-delimiters flycheck helm-ebdb))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "ricty" :foundry "ricty" :font "ricty" :slant normal :weight normal :height 136 :width normal)))))
;;; バックアップファイルを作らない
(setq make-backup-files nil)
;;; オートセーブファイルを作らない
(setq auto-save-default nil)
;;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")
;;;scratch の初期メッセージを消す
(setq initial-scratch-message "")
;;;行
(global-linum-mode t) 
;;;列
(column-number-mode t)
;;;パッケージ
(require 'package)
;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; Orgを追加
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;;;テーマ追加
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/"))
(load-theme 'simple-1 t)
;;時計
(display-time)
(setq display-time-string-forms
      '((format "%s/%s(%s)%s:%s"
		month day dayname
		24-hours minutes
		)))
;;フルスクリーン
(defun my-fullscreen ()
  (interactive)
  (let ((fullscreen (frame-parameter (selected-frame) 'fullscreen)))
    (cond
     ((null fullscreen)
      (set-frame-parameter (selected-frame) 'fullscreen 'maximized))
     (t
      (set-frame-parameter (selected-frame) 'fullscreen 'nil))))
  (redisplay))
(global-set-key [f11] 'my-fullscreen)
;; 以前開いたファイルを再度開いたとき、元のカーソル位置を復元する
;; http://www.emacswiki.org/emacs/SavePlace
(when (save-place-mode 1) 
  (setq-default save-place t)
  (setq save-place-file "~/.emacs.d/saved-places"))
;;;ウィンド移動
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
;;;現在の行をハイライト表示にする
(global-hl-line-mode t)

(defun all-indent ()
  (interactive)
  (point-pos-save)
  (mark-whole-buffer)
  (indent-region (region-beginning)(region-end))
  (point-pos-next)
  (point-pos-delete)
  )
(global-set-key (kbd  "C-x C-]") 'all-indent)

(global-set-key (kbd "C-x ps") 'point-pos-save)
(global-set-key (kbd "C-x pd") 'point-pos-delete)
(global-set-key (kbd "C-x pg") 'point-pos-goto)
(global-set-key (kbd "C-x pp") 'point-pos-previous)
(global-set-key (kbd "C-<mouse-9>") 'point-pos-next)
(global-set-key (kbd "<mouse-8>") 'point-pos-previous)
(global-set-key (kbd "<mouse-9>") 'point-pos-save)
(global-set-key (kbd "C-x pn") 'point-pos-next)
;; スクロールは1行ごとに
;;(setq mouse-wheel-scroll-amount '(1 ((shift) . 5)))
;; スクロールの加速をやめる
;;(setq mouse-wheel-progressive-speed nil)
;; 全角半角キーを定義する
(define-key global-map [zenkaku-hankaku] 'toggle-input-method)
(require 'mozc)
;; or (load-file "/path/to/mozc.el")
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
