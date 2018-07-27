;;;anzu
(global-anzu-mode +1)
;;;指定の行に移る
(global-set-key "\M-3" 'goto-line)
;;;Emacsの再起動なしでファイ0ルを更新する
(global-set-key "\M-5" 'revert-buffer)
;;;置換1
(global-set-key "\M-1" 'anzu-query-replace-regexp)
;;;置換2
(global-set-key "\M-2" 'anzu-query-replace-at-cursor-thing)
