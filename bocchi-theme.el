;;; bocchi-theme.el --- an Emacs theme based on Bocchi the Rock!
;;
;;; Author: cel7t
;;; Version: 20230401
;;
;;; Licence: GPLv3
;;; Code:

(deftheme bocchi
  "bocchi-theme - an Emacs theme based on Bocchi the Rock! and Lavender")

(custom-theme-set-variables
 'bocchi
)

(let ((background "#1D1A23")
			(background-2 "#15050A")
      (current-line "#2c2241")
      (fringe-color "#000000")
			(linum-color "#201d20")
      (selection "#323333")
      (foreground "#ffffff")
      (comment "#A5A7A8")
      (cursor "#B9BCBD")
      (bocchi-0 "#C87392")
			(bocchi-1 "#ED709A")
			(bocchi-2 "#EA618F")
			(bocchi-3 "#F99DA2")
			(bocchi-4 "#FCA4B6")
			(bocchi-5 "#F8AEB2")
			(mystery "#EE8B6C")
			(kessoku-green "#00A882")
			(kita-d "#C83033")
      (kita-0 "#C22B5A")
			(kita-1 "#E81A5B")
			(kita-2 "#DC5132")
      (kita-3 "#D6223D")
			(ryou-1 "#1A7CC3")
			(ryou-2 "#1F458D")
			(ryou-3 "#233E6E")
      (ryou-4 "#1F2977")
			(ryou-5 "#B9E4EB")
      (nijika-1 "#F6B31A")
			(nijika-2 "#F8DB60"))

(custom-theme-set-faces
 'bocchi
 ;; basic theming.

 `(default ((t (:foreground "#dddddd" :background ,background))))
 `(region  ((t (:foreground ,background-2 :background ,bocchi-0))))
 `(cursor  ((t (:background "#fefefe"))))

 ;; Temporary defaults
 `(linum ((t (:foreground "#343434"  :background ,background-2))))
 `(fringe ((t (:background ,fringe-color))))
 `(minibuffer-prompt ((t (:foreground ,kita-3 :background nil :weight bold))))
 `(escape-glyph ((t (:foreground ,kita-2 :background nil))))
 `(highlight ((t (:foreground ,background-2   :background ,nijika-1))))
 `(hl-line ((t (:foreground nil :background ,current-line))))
 `(shadow ((t (:foreground "#565656"  :background nil))))
 `(trailing-whitespace ((t (:foreground "#dddddd"  :background ,kita-2))))
 `(link ((t (:foreground ,ryou-5  :background nil :underline t))))
 `(link-visited ((t (:foreground ,ryou-3 :underline t :inherit (link)))))
 `(button ((t (:foreground "#dddddd" :background "#444444" :underline t :inherit (link)))))
 `(next-error ((t (:inherit (region)))))
 `(query-replace ((t (:inherit (isearch)))))
 `(header-line ((t (:foreground "#cccccc"  :background "#444444" :box nil :inherit (mode-line)))))
 `(mode-line-highlight ((t (:box nil))))
 `(mode-line-emphasis ((t (:weight bold))))
 `(mode-line-buffer-id ((t (:box nil :weight bold))))
 `(mode-line-inactive ((t (:foreground ,bocchi-2 :background ,fringe-color :box nil :weight light :inherit (mode-line)))))
 `(mode-line ((t (:foreground "#dddddd"  :background ,background-2 :box nil ))))
 `(isearch ((t (:foreground ,ryou-5  :background "#444444"))))
 `(isearch-fail ((t (:background ,kita-3))))
 `(lazy-highlight ((t (:background ,ryou-5 :foreground ,background-2))))
 `(match ((t (:background ,ryou-1 :foreground ,background-2))))
 `(tooltip ((t (:foreground "black" :background ,nijika-2 :inherit (variable-pitch)))))
 `(secondary-selection ((t (:background ,linum-color))))
 `(cua-rectangle ((t (:foreground "#aaaaaa" :background ,current-line))))
 ;; Magit hightlight
 `(magit-item-highlight ((t (:foreground "white" :background ,ryou-2 :inherit nil ))))
 ;; flyspell-mode
 `(flyspell-incorrect ((t (:underline ,kita-3 :background nil :inherit nil ))))
 `(flyspell-duplicate ((t (:underline ,nijika-2 :background nil :inherit nil ))))
 ;; flymake-mode
 `(flymake-errline ((t (:underline ,kita-3 :background nil :inherit nil ))))
 `(flymake-warnline ((t (:underline ,nijika-2 :background nil :inherit nil ))))
 ;;git-gutter
 `(git-gutter:added ((t (:foreground ,nijika-2 :bold t))))
 `(git-gutter:modified ((t (:foreground ,ryou-3 :bold t))))
 `(git-gutter:deleted ((t (:foreground ,kita-3 :bold t))))
 `(diff-added                          ((t (:background "#F8DB60"))))
 `(diff-removed                        ((t (:background "#A6311D"))))
 `(diff-file-header                    ((t (:background ,current-line))))
 `(diff-context                        ((t (:foreground "#A0A0A0"))))
 `(diff-changed                        ((t (:foreground ,ryou-5))))
 `(diff-hunk-header                    ((t (:background ,ryou-3))))

 `(font-lock-comment-face ((t (:foreground "#97615F")))) ;; this is a comment
 `(font-lock-string-face ((t (:foreground ,bocchi-2))))
 ;; I prefer the default built-in face
;; `(font-lock-builtin-face ((t (:foreground "#B4B8F4"))))
 `(font-lock-variable-name-face ((t (:foreground ,mystery))))
 `(font-lock-constant-face ((t (:foreground ,kita-d))))
 `(font-lock-keyword-face ((t (:foreground ,ryou-5))))
 `(font-lock-type-face ((t (:foreground ,nijika-1 :underline t))))
 `(font-lock-function-name-face ((t (:foreground ,nijika-2))))
 `(font-lock-warning-face ((t (:foreground "#F4F4F4" :background ,kita-3))))
 `(font-lock-comment-delimiter-face ((t (:foreground "#5F4249"))))

;; Rainbow delimiters
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#477CB4"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#C59C42"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#85D0E7"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#EECB45"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#869AE0"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#EE8B6C"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#D7CBEC"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#F9CCAD"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#9159A4"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))
)) ;; End face definitions

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'bocchi)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; bocchi-theme.el ends here
