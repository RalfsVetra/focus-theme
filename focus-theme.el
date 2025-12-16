;;; focus-theme.el

;; Copyright (c) 2025-2026 Ralfs K. Vētra

;; Author: Ralfs K. Vētra
;; URL: https://github.com/RalfsVetra/focus-theme
;; Version: 0.0.1

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(deftheme focus "Focus color theme for Emacs 30")

(let ((black          "#000000")
      (white          "#ffffff")
      (grey           "#dddddd")
      (blue           "#4c7899")
      (dark-blue      "#285577")
      (dark-grey      "#757575")
      (very-dark-grey "#414141"))

  (custom-theme-set-faces
   'focus
   
   ;; Basic coloring
   `(default ((t (:foreground, grey :background, black))))
   `(region ((t (:background, very-dark-grey :foreground, grey))))
   `(cursor ((t (:background, grey))))
   
   ;; Font lock
   `(font-lock-builtin-face ((t (:foreground, grey))))
   `(font-lock-comment-face ((t (:foreground, dark-grey))))
   `(font-lock-constant-face ((t (:foreground, grey))))
   `(font-lock-function-name-face ((t (:foreground, grey))))
   `(font-lock-doc-face ((t (:foreground, grey))))
   `(font-lock-keyword-face ((t (:foreground, grey))))
   `(font-lock-variable-name-face ((t (:foreground, grey))))
   `(font-lock-type-face ((t (:foreground, grey))))
   `(font-lock-preprocessor-face ((t (:foreground, grey))))
   `(font-lock-string-face ((t (:foreground, grey))))

   ;; Line highlight
   `(highlight ((t (:background, grey :foreground, black))))

   ;; Search
   `(isearch ((t (:background, very-dark-grey))))

   ;; Compilation
   `(compilation-mode-line-exit ((t (:foreground, white))))
   `(compilation-info ((t (:foreground, white))))
   `(compilation-error ((t (:foreground, white))))

   ;; Mode-line styling
   `(mode-line ((t (:foreground, white :background, dark-blue :box (:color, blue)))))
   `(mode-line-inactive ((t (:foreground, white :background, dark-blue :box (:color, blue)))))
   `(mode-line-buffer-id ((t (:weight normal))))
   `(minibuffer-prompt ((t (:foreground, grey))))
   `(fringe ((t (:background, black))))

   ;; Line numbers
   `(line-number ((t (:foreground, dark-grey :background, black))))
   `(line-number-current-line ((t (:foreground, grey))))

   ;; Show paren
   `(show-paren-match ((t (:background, very-dark-grey))))
   `(show-paren-mismatch ((t (:background, very-dark-grey)))) 

   ;; Feedback and errors
   `(success ((t (:foreground, grey))))
   `(warning ((t (:foreground, white))))
   `(error ((t (:foreground, grey))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'focus)

;;; focus-theme.el ends here
