(add-hook
 'after-init-hook
 (lambda ()
   (require 'helm-config)
   (helm-mode 1)))

(menu-bar-mode -1)

;; custom
(global-set-key "\C-xg" 'magit-status)
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key [f8] 'shell)

(custom-set-faces
 ;; other faces
 '(magit-diff-added ((((type tty)) (:foreground "green"))))
 '(magit-diff-added-highlight ((((type tty)) (:foreground "LimeGreen"))))
 '(magit-diff-context-highlight ((((type tty)) (:foreground "default"))))
 '(magit-diff-file-heading ((((type tty)) nil)))
 '(magit-diff-removed ((((type tty)) (:foreground "red"))))
 '(magit-diff-removed-highlight ((((type tty)) (:foreground "IndianRed"))))
 '(magit-section-highlight ((((type tty)) nil))))
