;;;powline
(require 'powerline)
(set-face-attribute 'mode-line nil
                    :foreground "#71174f"
                    :background "#f4eaff"
                    :box nil)
(set-face-attribute 'powerline-active1 nil
                    :foreground "#f4eaff"
                    :background "#71174f"
                    :inherit 'mode-line)
(set-face-attribute 'powerline-active2 nil
                    :foreground "#000000"
                    :background "#ffe08d"
                    :inherit 'mode-line)
(powerline-default-theme)
