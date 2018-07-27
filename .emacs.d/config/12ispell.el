;;aspell
(setq-default ispell-program-name "aspell")
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))
;;以下flyspell-modeの設定
(mapc                                 
 (lambda (hook)
   (add-hook hook 'flyspell-prog-mode))
 '(
   ;;ここに書いたモードではコメント領域のところだけ
   ;;flyspell-modeが有効になる
   c-mode-common-hook
   emacs-lisp-mode-hook                
   )
 )
(mapc
 (lambda (hook)
   (add-hook hook
         '(lambda () (flyspell-mode 1))))
 '(
   ;;ここに書いたモードでは
   ;;flyspell-modeが有効になる
   yatex-mode-hook   
   )
 )
