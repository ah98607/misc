(set-background-color "#2f4f4f")
(set-foreground-color "tan")

;;Andy: Row  number
(column-number-mode t)

;;Andy: Column number
(setq mouse-yank-at-point t)

;;Andy: Display (){}[] matching
(show-paren-mode t)

;;Andy: Use mouse wheel
(mouse-wheel-mode t)

;;Andy: Highlight selected region
(transient-mark-mode t)

;;Andy: Close welcome
(setq inhibit-startup-message t)

;;Andy: ibuffer
(require 'ibuffer)
(global-set-key [(f4)] 'ibuffer)

;;Andy: Hide  tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;;Andy: Display path name on the top
(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;;Andy: Set font size
(set-face-attribute 'default nil :height 120)

;;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;;Andy: From Verilog Mode
(defun prepend-path ( my-path )
(setq load-path (cons (expand-file-name my-path) load-path)))
(defun append-path ( my-path )
(setq load-path (append load-path (list (expand-file-name my-path)))))
;; Look first in the directory ~/elisp for elisp files
(prepend-path "~/elisp")
;; Load verilog mode only when needed
(autoload 'verilog-mode "verilog-mode" "Verilog mode" t )
;; Any files that end in .v, .dv or .sv should be in verilog mode
(add-to-list 'auto-mode-alist '("\\.[ds]?v\\'" . verilog-mode))
;; Any files in verilog mode should have their keywords colorized
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
'(column-number-mode t)
'(delete-selection-mode nil)
'(scroll-bar-mode (quote right))
'(show-paren-mode t)
'(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)
;;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
