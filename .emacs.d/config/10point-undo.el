;;;point-undo
;;(require 'point-undo)
;;(define-key global-map [f7] 'point-undo)
;;(define-key global-map [S-f7] 'point-redo)
(add-to-list 'load-path "/path/to/point-pos-dir")
(autoload 'point-pos-save "point-pos" nil t)
