;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


(setq projectile-project-search-path '("~/win_e/projects/"))

;; nand2tetris config
(use-package! nand2tetris
  :init
  (setq nand2tetris-core-base-dir "~/win_e/studies_other/nand2tetris/"))

(add-to-list 'auto-mode-alist '("\\.hdl\\'" . nand2tetris-mode))

;; nand2tetris config for jack
(use-package! jack-mode
  :after nand2tetris
  :init
  (setq jack-tools-directory (concat nand2tetris-core-base-dir "/tools/"))
  (setq jack-build-directory "~/.emacs.d/.local/straight/build-28.1/jack-mode/libraries")


  )

(add-to-list 'auto-mode-alist '("\\.jack\\'" . jack-mode))


;; (use-package  elcord-wsl
;;   :load-path "/home/antas/.emacs.d/elcord-wsl.el" ;; customise the path
;;   :init
;;   (setq elcord-wsl--load-path "/home/antas/.emacs.d/elcord-wsl.el") ;; customise the path
;;   (setq elcord-wsl--node-path "/mnt/c/Program Files/nodejs/node.exe")
;;   (setq elcord-wsl--ignored-buffers
;;         '("Treemacs" "Minibuf"))
;;   ;; all file type associations (this is long since I updated all the images)
;;   (setq elcord-wsl--assets-alist
;;         '(("\\.c$" . "c")
;;           ("\\.h$" . "c")
;;           ("\\.cpp$" . "cpp")
;;           ("\\.hpp$" . "cpp")
;;           ("\\.clj$" . "clojure")
;;           ("\\.cljc$" . "clojure")
;;           ("\\.edn$" . "clojure")
;;           ("\\.coffee$" . "coffee")
;;           ("\\.litcoffee$" . "coffee")
;;           ("\\.cs$" . "csharp")
;;           ("\\.csx$" . "csharp")
;;           ("\\.css$" . "css3")
;;           ("\\.dockerfile$" . "docker")
;;           ("\\.elm$" . "elm")
;;           ("\\.erl$" . "erlang")
;;           ("\\.hrl$" . "erlang")
;;           ("\\.f90$" . "fortran")
;;           ("\\.f$" . "fortran")
;;           ("\\.for$" . "fortran")
;;           ("\\.git$" . "git")
;;           ("\\.gitignore$" . "git")
;;           ("\\.go$" . "go")
;;           ("\\.gd$" . "godot")
;;           ("\\.html$" . "html5")
;;           ("\\.java$" . "java")
;;           ("\\.class$" . "java")
;;           ("\\.jar$" . "java")
;;           ("\\.jmod$" . "java")
;;           ("\\.hs$" . "haskell")
;;           ("\\.js$" . "js")
;;           ("\\.json$" . "json")
;;           ("\\.jl$" . "julia")
;;           ("\\.ipynb$" . "jupyter")
;;           ("\\.kt$" . "kotlin")
;;           ("\\.kts$" . "kotlin")
;;           ("\\.tex$" . "latex")
;;           ("\\.lua$" . "lua")
;;           ("\\.m$" . "matlab")
;;           ("\\.mat$" . "matlab")
;;           ("\\.p$" . "matlab")
;;           ("\\.mex$" . "matlab")
;;           ("\\.fig$" . "matlab")
;;           ("\\.mlx$" . "matlab")
;;           ("\\.mlappinstall$" . "matlab")
;;           ("\\.mlapp$" . "matlab")
;;           ("\\.mltbx$" . "matlab")
;;           ("\\.mlpkginstall$" . "matlab")
;;           ("\\.md$" . "md")
;;           ("\\.ml$" . "ocaml")
;;           ("\\.mli$" . "ocaml")
;;           ("\\.org$" . "org")
;;           ("\\.php$" . "php")
;;           ("\\.py$" . "python")
;;           ("\\.pyw$" . "python")
;;           ("\\.pyz$" . "python")
;;           ("\\.pyi$" . "python")
;;           ("\\.pyc$" . "python")
;;           ("\\.pyd$" . "python")
;;           ("\\.pyo$" . "python")
;;           ("\\.r$" . "r")
;;           ("\\.rdata$" . "r")
;;           ("\\.rds$" . "r")
;;           ("\\.rda$" . "r")
;;           ("\\.rb$" . "ruby")
;;           ("\\.rs$" . "rust")
;;           ("\\.rlib$" . "rust")
;;           ("\\.sass$" . "sass")
;;           ("\\.scss$" . "sass")
;;           ("\\.scala$" . "scala")
;;           ("\\.sc$" . "sc")
;;           ("\\.svelte$" . "svelte")
;;           ("\\.swift$" . "swift")
;;           ("\\.SWIFT$" . "swift")
;;           ("\\.ts$" . "ts")
;;           ("\\.tsx$" . "ts")
;;           ("\\.mts$" . "ts")
;;           ("\\.cts$" . "ts")
;;           ("\\.vimrc$" . "vim")
;;           ("\\.zig$" . "zig")
;;           ("\\.zir$" . "zir")
;;           ("scratch" . "emacs")
;;           ("^_default" . "emacs")
;;           (".*$" . "emacs")))

;;   (setq elcord-wsl--client-id "1142538514777526392")
;;   ;; (setq elcord-wsl--client-id "698809287564328991")
;;   :config
;;   (defun elcord-wsl--details-function (buf)
;;     (concat "I am editing " buf "!"))
;;   (defun elcord-wsl--state-function (buf)
;;     '"I solemnly swear that I am up to no good..")


;;   ) ;; customise the path

;; ;; ;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


;;config for org-super-agenda
(use-package! org-super-agenda
  :after org-agenda

  :init
  (setq  org-super-agenda-groups '((:name "Today"
                                    :time-grid t
                                    :scheduled today)
                                   (:name "Due today"
                                    :deadline today)
                                   (:name "Important"
                                    :priority "A")
                                   (:name "Overdue"
                                    :deadline past)
                                   (:name "Due soon"
                                    :deadline future)
                                   (:name "Big Outcomes"
                                    :tag "bo"))
         )
  :config
  (org-super-agenda-mode)
  )



(when (and (eq system-type 'gnu/linux)
           (string-match
            "Linux.*Microsoft.*Linux"
            (shell-command-to-string "uname -a")))
  (setq
   browse-url-generic-program  "/mnt/c/Windows/System32/cmd.exe"
   browse-url-generic-args     '("/c" "start")
   browse-url-browser-function #'browse-url-generic))
;; make yt link


(defun make-youtube-link (youtube_id)
  (browse-url (concat "https://www.youtube.com/embed/" youtube_id)
              )

  )



;; (defun make-default-xournal-link ()
;; (org-notebook-edit-default-xopp ))



(after! hyperbole
  ;; SPC Shift-Enter
  (map! :desc "Hyperbole Action" :ne "SPC <return>" #'action-key)
  )

;; ;; org-config
(after! org
  (org-link-set-parameters "yt" #'make-youtube-link)
  ;; copied from Zaiste
  ;;(org-link-set-parameters "xd" #'org-notebook-edit-default-xopp)
  (setq org-todo-keywords '((sequence "TODO(t)" "INPROGRESS(i)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")
                            (sequence "[ ](T)" "[...](I)" "[?](W)" "|" "[✓](D)" "[X](C)")
                            (sequence "|" "OKAY(o)" "YES(y)" "NO(n)")))
  (setq org-todo-keyword-faces '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
                                 ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
                                 ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
                                 ("DONE" :foreground "#50a14f" :weight normal :underline t)
                                 ("CANCELLED" :foreground "#ff6480" :weight normal :underline t)))
  (setq org-priority-faces   '((?A)
                               (?B)
                               (?C)
                               (?D)
                               (?E)
                               (?F))
        )
  (add-hook 'org-mode-hook 'org-latex-preview-auto-mode)
  ;;(add-hook 'org-mode-hook 'global-prettify-symbols-mode)
  (add-hook 'org-mode-hook '+org-pretty-mode)
  ;; (setq org-latex-preview-auto-generate 'live
  ;;       org-latex-preview-debounce 0.2
  ;;       org-latex-preview-throttle 0.2)


  ;; ================= XOURNAL START =====================



  ;; move to !after org
  ;; Org Notebook

  (map! :desc "Edit Default Xournal" :ne "SPC f x" #'org-notebook-edit-default-xopp)
  (map! :desc "Create Default xournal link" :ne "SPC m l x" #'org-notebook-default-xopp-link)

  ;; (define-key org-mode-map (kbd "SPC f x") 'org-notebook-edit-defaut-xopp)
  ;; (define-key org-mode-map (kbd "SPC m l x") 'org-notebook-default-xopp-link)

  (defun org-notebook-get-png-link-at-point (shouldThrowError)
    "Returns filepath of org link at cursor"
    (setq linestr (thing-at-point 'line))
    (setq start (string-match "\\[\\[" linestr))
    (setq end (string-match "\\]\\]" linestr))
    (if shouldThrowError (if start nil (error "No link found")) nil)
    (if shouldThrowError (if end nil   (error "No link found")) nil)
    (if shouldThrowError (if (string-match ".png" linestr) nil   (error "Link is not an image")) nil)

    (if (and linestr start end) (substring linestr (+ start 2) end) nil)
    )

  (defun org-notebook-default-xopp-name ()
    (setq result-dir   (file-name-directory buffer-file-name))
    (setq file-name    (file-name-base      buffer-file-name))
    (setq xournal-path (format "%s/%s.xopp" result-dir file-name))


    xournal-path
    )

  (defun org-notebook-default-xopp-link (&optional lineno)

    (interactive)
    (if (not lineno)
        (evil-goto-line 5)
      (evil-goto-line lineno))
    (evil-open-below 1)
    (insert "[[elisp:(org-notebook-edit-default-xopp)][Link to main xopp]]\n" )
    (evil-normal-state))


  (defun org-notebook-create-default-xopp ()
    ;;
    (interactive)

    (setq xournal-path (org-notebook-default-xopp-name))
    ;;  (evil-open-below 1)
    ;;  (insert "[[" xournal-path "]]" "\n")
    ;;  (evil-normal-state)

    (let ((process-connection-type nil))
      (start-process "org-notebook-copy-template" nil "cp"  "~/template.xopp" xournal-path)
      (start-process "org-notebook-drawing" nil "xour" xournal-path)
      ))



  (defun org-notebook-edit-default-xopp ()
    (interactive)
    (setq xournal-path (org-notebook-default-xopp-name))
    (if (not (file-exists-p xournal-path))
        (if (y-or-n-p "No matching xournal file, create one?")
            (org-notebook-create-default-xopp)
          (error "Nothing more to do...")
          )
      nil
      )

    (if (file-readable-p xournal-path) (let ((process-connection-type nil))
                                         (start-process "org-notebook-drawing" nil "~/scripts/xour" xournal-path)) (error "No matching xournal file found"))
    )



  (defun org-notebook-gen-filename-at-point ()
    "Returns a list of valid file paths corresponding
                to current context(Header & Date)."

    (setq result-dir "./fig/")
    (unless (file-directory-p result-dir) (make-directory result-dir))

    (setq date-string (format-time-string "%Y-%m-%d_%H%M%S"))

    (setq heading (nth 4 (org-heading-components)))

    (setq heading (replace-regexp-in-string "\\[.*\\]" "" heading))

    ;; First filter out weird symbols
    (setq heading (replace-regexp-in-string "[/;:'\"\(\)]+" "" heading))
    (setq heading (string-trim heading))
    ;; filter out swedish characters åäö -> aao
    (setq heading(replace-regexp-in-string "[åÅäÄ]+" "a" heading))
    (setq heading(replace-regexp-in-string "[öÓ]+" "o" heading))
    ;; whitespace and . to underscores
    (setq heading (replace-regexp-in-string "[ .]+" "_" heading))

    (setq filename (format "%s-%s" heading date-string))
    (setq filename (read-minibuffer "Filename: " filename))

    (setq result-dir "./fig/")
    (setq image-path (format "%s%s.png" result-dir filename))
    (setq xournal-path (format "%s%s.xopp" result-dir filename))

    (list image-path xournal-path)
    )


  (defun org-notebook-create-xournal ()
    "Insert an image and open the drawing program"
    (interactive)

    (setq notebookfile (org-notebook-gen-filename-at-point))
    (setq image-path (car notebookfile))
    (setq xournal-path (nth 1 notebookfile))

    (evil-open-below 1)
    (insert "[[" image-path "]]\n")
    (evil-normal-state)

    (start-process "org-notebook-copy-template" nil "cp"  "./template.xopp" xournal-path)
    (start-process "org-notebook-drawing" nil "xournalpp" xournal-path)
    )

  (defun org-notebook-edit-xournal ()
    (interactive)
    (setq image-path (org-notebook-get-png-link-at-point nil))
    (if (not image-path)
        (if (y-or-n-p "No matching xournal file, create one?")
            (org-notebook-create-xournal)
          (error "Nothing more to do...")
          )
      nil
      )

    (setq xournal-path (replace-regexp-in-string "\.png" ".xopp" image-path))
    (if (file-readable-p xournal-path) (start-process "org-notebook-drawing" nil "xour" xournal-path) (error "No matching xournal file found"))
    )

  (defun org-notebook-generate-xournal-image ()
    (interactive)
    (setq image-path (org-notebook-get-png-link-at-point t))
    (setq xournal-path (replace-regexp-in-string "\.png" ".xopp" image-path))
    (if (file-readable-p xournal-path) nil (error "No matching xournal file found"))

    (setq xournal_cmd (format "xournalpp %s %s %s" xournal-path "-i" image-path))
    (print (format "Generating image file: %s" xournal_cmd))
    (shell-command xournal_cmd)


    (setq convert_cmd (format "convert %s -trim -bordercolor '#333333' -border 20 +repage %s" image-path image-path))
    (print (format "Auto cropping image: %s" convert_cmd))
    (shell-command convert_cmd)

    (org-redisplay-inline-images)
    )

  ;; ====================== XOURNAL END ====================================





  )









;; (use-package! org-latex-preview
;;   :config
;; (defun org-latex-svg--make-preview-fg-currentColor (svg-fragment)
;;   "Replace the foreground color in SVG-FRAGMENT's file with \"currentColor\".
;; The foreground color is guessed to be the first specified <g>
;; fill color, which appears to be a reliable heuristic from a few
;; tests with the output of dvisvgm."
;;   (let ((write-region-inhibit-fsync t)
;;         ;; dvisvgm produces UTF-8 encoded files, so we might as well
;;         ;; avoid calling `find-auto-coding'.
;;         (coding-system-for-read 'utf-8)
;;         (coding-system-for-write 'utf-8)
;;         ;; Prevent any file handlers (specifically
;;         ;; `image-file-handler') from being called.
;;         (file-name-handler-alist nil)
;;         (path (plist-get svg-fragment :path)))
;;     (when path
;;       (catch 'svg-exists
;;         (dotimes (_ 1000)           ; Check for svg existance over 1s.
;;           (when (file-exists-p path)
;;             (throw 'svg-exists t))
;;           (sleep-for 0.001)))
;;       (with-temp-buffer
;;         (insert-file-contents path)
;;         (unless ; When the svg is incomplete, wait for it to be completed.
;;             (string= (buffer-substring (max 1 (- (point-max) 6)) (point-max))
;;                      "</svg>")
;;           (catch 'svg-complete
;;             (dotim      es (_ 1000) ; Check for complete svg over 1s.
;;               (if (string= (buffer-substring (max 1 (- (point-max) 6)) (point-max))
;;                            "</svg>")
;;                   (throw 'svg-complete t)
;;                 (erase-buffer)
;;                 (sleep-for 0.001)
;;                 (insert-file-contents path)))
;;             (erase-buffer)))
;;         (goto-char (point-min))
;;         (if (or (= (buffer-size) 0)
;;                 (re-search-forward "<svg[^>]*>\n<g[^>]*>\n</svg>" nil t))
;;             ;; We never want to show an empty SVG, instead it is better to delete
;;             ;; it and leave the LaTeX fragment without an image overlay.
;;             ;; This also works better with other parts of the system, such as
;;             ;; the display of errors.
;;             (delete-file path)
;;           (while (re-search-forward org-latex-preview--svg-fg-standin nil t)
;;             (replace-match "currentColor" t t))
;;           (write-region nil nil path nil 0))))))
;;)

;; (add-to-list 'load-path "/home/antas/.emacs.d/.local/straight/repos/autopair/") ;; comment if autopair.el is in standard load path
;; (require 'autopair)
;; (autopair-global-mode)

(use-package! org-fancy-priorities
  :hook (org-mode . org-fancy-priorities-mode)
  :config
  (setq org-fancy-priorities-list '((?A . "❗")
                                    (?B . "⬆")
                                    (?C . "⬇")
                                    (?D . "☕")
                                    (?E . "⚡")
                                    (?2 . "⮬")
                                    (?3 . "⮮")
                                    (?F . "I"))))

;; (use-package! org-preview)

(with-eval-after-load 'org
  (add-to-list 'org-latex-packages-alist '("" "amsmath" t)))
;; (use-package! gif-screencast-
(require 'gif-screencast)
(global-set-key (kbd "<f9>") 'gif-screencast-start-or-stop)
(setq gif-screencast-program "convert"
      gif-screencast-args '("x:root"))

(map! :desc "Create Sparse Tree" :ne "SPC / s" #'org-sparse-tree)
(map! :desc "Create Sparse Tree for Tags" :ne "SPC / t" #'org-tags-sparse-tree)
(map! :desc "Comment" :ne "SPC [" #'comment-region)
(map! :desc "Uncomment" :ne "SPC ]" #'uncomment-region)


(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git"
                                                                         projectile-project-root-files-bottom-up)))


;;; Latex-auto-activating-snippets
(use-package! laas
  :hook ((LaTeX-mode . laas-mode)
         (org-mode . laas-mode)
         (markdown-mode . laas-mode))
  :config
  (setq laas-enable-auto-space nil)
  (aas-set-snippets 'laas-mode
    "mke" (lambda ()
            (interactive)
            (yas-expand-snippet "\\\\($0\\\\)"))
    "dke" (lambda ()
            (interactive)
            (yas-expand-snippet  "\\begin{equation*}\n$0\n\\end{equation*}"))
    "td" (lambda ()
           (interactive)
           (if (laas-mathp)
               (yas-expand-snippet "^\\{$0}")
             (yas-expand-snippet "td")))
    "PP" (lambda ()
           (interactive)
           (if (laas-mathp)
               (yas-expand-snippet "\\mathbb{P}($0)")
             (yas-expand-snippet "PP")))))


;; copied from reddit, tab autocomplete
(after! company
    ;;; Prevent suggestions from being triggered automatically. In particular,
  ;;; this makes it so that:
  ;;; - TAB will always complete the current selection.
  ;;; - RET will only complete the current selection if the user has explicitly
  ;;;   interacted with Company.
  ;;; - SPC will never complete the current selection.
  ;;;
  ;;; Based on:
  ;;; - https://github.com/company-mode/company-mode/issues/530#issuecomment-226566961
  ;;; - https://emacs.stackexchange.com/a/13290/12534
  ;;; - http://stackoverflow.com/a/22863701/3538165
  ;;;
  ;;; See also:
  ;;; - https://emacs.stackexchange.com/a/24800/12534
  ;;; - https://emacs.stackexchange.com/q/27459/12534

  ;; <return> is for windowed Emacs; RET is for terminal Emacs
  (dolist (key '("<return>" "RET"))
    ;; Here we are using an advanced feature of define-key that lets
    ;; us pass an "extended menu item" instead of an interactive
    ;; function. Doing this allows RET to regain its usual
    ;; functionality when the user has not explicitly interacted with
    ;; Company.
    (define-key company-active-map (kbd key)
      `(menu-item nil company-complete
        :filter ,(lambda (cmd)
                   (when (company-explicit-action-p)
                     cmd)))))
  ;; (define-key company-active-map (kbd "TAB") #'company-complete-selection)
  (map! :map company-active-map "TAB" #'company-complete-selection)
  (map! :map company-active-map "<tab>" #'company-complete-selection)
  (define-key company-active-map (kbd "SPC") nil)

  ;; Company appears to override the above keymap based on company-auto-complete-chars.
  ;; Turning it off ensures we have full control.
  (setq company-auto-commit-chars nil)
  )
