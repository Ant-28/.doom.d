;;; ignore.el -*- lexical-binding: t; -*-

  ;; use modified version until pushed to tec main
(defun org-latex-preview--svg-make-fg-currentColor (svg-fragment)
  "Replace the foreground color in SVG-FRAGMENT's file with \"currentColor\".
The foreground color is guessed to be the first specified <g>
fill color, which appears to be a reliable heuristic from a few
tests with the output of dvisvgm."
  (let ((write-region-inhibit-fsync t)
        ;; dvisvgm produces UTF-8 encoded files, so we might as well
        ;; avoid calling `find-auto-coding'.
        (coding-system-for-read 'utf-8)
        (coding-system-for-write 'utf-8)
        ;; Prevent any file handlers (specifically
        ;; `image-file-handler') from being called.
        (file-name-handler-alist nil)
        (path (plist-get svg-fragment :path)))
        (when path
          (catch 'svg-exists
            (dotimes (_ 1000) ; Check for svg existance over 1s.
              (when (file-exists-p path)
                (throw 'svg-exists t))
              (sleep-for 0.001)))
       (with-temp-buffer
        (insert-file-contents path)
        (unless ; When the svg is incomplete, wait for it to be completed.
            (string= (buffer-substring (max 1 (- (point-max) 6)) (point-max))
                     "</svg>")
          (catch 'svg-complete
            (dotimes (_ 1000) ; Check for complete svg over 1s.
              (if (string= (buffer-substring (max 1 (- (point-max) 6)) (point-max))
                           "</svg>")
                  (throw 'svg-complete t)
                (erase-buffer)
                (sleep-for 0.001)
                (insert-file-contents path)))
            (erase-buffer)))
        (goto-char (point-min))
        (if (or (= (buffer-size) 0)
                (re-search-forward "<svg[^>]*>\n<g[^>]*>\n</svg>" nil t))
            ;; We never want to show an empty SVG, instead it is better to delete
            ;; it and leave the LaTeX fragment without an image overlay.
            ;; This also works better with other parts of the system, such as
            ;; the display of errors.
            (delete-file path)
          (while (re-search-forward org-latex-preview--svg-fg-standin nil t)
            (replace-match "currentColor" t t))
          (write-region nil nil path nil 0))))))
