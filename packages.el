;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

;; custom org fork
(package! org :pin "6eb77305361a1f6a3f67c3229f837f1c4e95f546" :recipe (:host nil :repo "https://git.tecosaur.net/tec/org-mode.git" :type git :branch "dev"))
;; nand2tetris
;;
;;
(package! nand2tetris
  :recipe (:host github :repo "Ant-28/nand2tetris.el"))
(package! jack-mode
:recipe (:host github :repo "Ant-28/jack-mode.el"))
;; (package! autopair
;;   :recipe (:host github :repo "joaotavora/autopair"))

;; (package! hyperbole )

;;
(package! org-super-agenda)
;;(package! org)
;;(package! org-mode)
(package! nerd-icons)
;; discord for wsl-emacs
;; (package! elcord-wsl

;;   :recipe (:host github :repo "Ant-28/elcord-wsl.el"))
(package! org-fancy-priorities)
(package! laas) ;; teco's latex snippets, perfect for orgmode

;; xournalpp support
(package! org-xournalpp
  :recipe (:host gitlab
           :repo "vherrmann/org-xournalpp"
           :files ("resources" "*.el")))

;; auto-LaTeX but bad
;; very soon this might just be handled by org 9.7
;; (package! org-fragtog)
;; (package! org-preview
;; :recipe (:host github :repo "karthink/org-preview"))


;; thank you shortcut
(package! gif-screencast-capture
  :recipe (
:host gitlab
:type git
:repo "ambrevar/emacs-gif-screencast"
:branch "master"
           ))
