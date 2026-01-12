;;; doom-flexoki-theme.el --- An inky color scheme for prose and code -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: Generated with Flexoki colors by Steph Ango
;; Maintainer:
;; Source: https://stephango.com/flexoki
;; Source: https://github.com/kepano/flexoki
;;
;;; Commentary:
;;
;; Flexoki is an inky color scheme for prose and code. Designed for reading
;; and writing on digital screens, inspired by analog printing inks and
;; warm shades of paper. Minimalistic and high-contrast.
;;
;;; Code:

(require 'doom-themes)

;;
;;; Variables

(defgroup doom-flexoki-theme nil
  "Options for the `doom-flexoki' theme."
  :group 'doom-themes)

(defcustom doom-flexoki-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-flexoki-theme
  :type 'boolean)

(defcustom doom-flexoki-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-flexoki-theme
  :type 'boolean)

(defcustom doom-flexoki-comment-bg doom-flexoki-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their
legibility."
  :group 'doom-flexoki-theme
  :type 'boolean)

(defcustom doom-flexoki-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-flexoki-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-flexoki
  "An inky color scheme for prose and code, inspired by Flexoki."
  :family 'doom-flexoki
  :background-mode 'dark

  ;; name        default   256           16
  ;; Flexoki base colors - dark mode uses darker base values
  ;; ((bg         '("#100F0F" "#121212"     "black"        ))  ; black
  ;;  (fg         '("#CECDC3" "#c6c6c6"     "brightwhite"  ))  ; base-200

  ;;  ;; Off-color variants for solaire-mode and subtle highlights
  ;;  (bg-alt     '("#1C1B1A" "#1c1c1c"     "black"        ))  ; base-950
  ((bg         '("#1C1B1A" "#1c1c1c"     "black"        ))  ; base-950
   (fg         '("#CECDC3" "#c6c6c6"     "brightwhite"  ))  ; base-200

   (bg-alt     '("#100F0F" "#121212"     "black"        ))  ; black
   (fg-alt     '("#878580" "#878787"     "white"        ))  ; base-500

   ;; Spectrum from bg to fg (base0 = starker bg, base8 = starker fg)
   (base0      '("#100F0F" "#080808"     "black"        ))  ; black
   (base1      '("#1C1B1A" "#1c1c1c"     "brightblack"  ))  ; base-950
   (base2      '("#282726" "#262626"     "brightblack"  ))  ; base-900
   (base3      '("#343331" "#303030"     "brightblack"  ))  ; base-850
   (base4      '("#403E3C" "#3a3a3a"     "brightblack"  ))  ; base-800
   (base5      '("#575653" "#4e4e4e"     "brightblack"  ))  ; base-700
   (base6      '("#6F6E69" "#626262"     "brightblack"  ))  ; base-600
   (base7      '("#878580" "#808080"     "brightblack"  ))  ; base-500
   (base8      '("#CECDC3" "#c6c6c6"     "white"        ))  ; base-200

   (grey       base5)

   ;; Flexoki accent colors - using 400 values for dark themes
   (red        '("#D14D41" "#d75f5f"     "red"          ))  ; red-400
   (orange     '("#DA702C" "#d78700"     "brightred"    ))  ; orange-400
   (green      '("#879A39" "#87af5f"     "green"        ))  ; green-400
   (teal       '("#3AA99F" "#5fafaf"     "brightgreen"  ))  ; cyan-400
   (yellow     '("#D0A215" "#d7af00"     "yellow"       ))  ; yellow-400
   (blue       '("#4385BE" "#5f87af"     "brightblue"   ))  ; blue-400
   (dark-blue  '("#205EA6" "#005f87"     "blue"         ))  ; blue-600
   (magenta    '("#CE5D97" "#d75faf"     "brightmagenta"))  ; magenta-400
   (violet     '("#8B7EC8" "#8787d7"     "magenta"      ))  ; purple-400
   (cyan       '("#3AA99F" "#5fafaf"     "brightcyan"   ))  ; cyan-400
   (dark-cyan  '("#24837B" "#008787"     "cyan"         ))  ; cyan-600

   ;; Additional Flexoki colors for extended use
   (red-dim    '("#AF3029" "#af0000"     "red"          ))  ; red-600
   (orange-dim '("#BC5215" "#af5f00"     "brightred"    ))  ; orange-600
   (green-dim  '("#66800B" "#5f8700"     "green"        ))  ; green-600
   (yellow-dim '("#AD8301" "#af8700"     "yellow"       ))  ; yellow-600
   (blue-dim   '("#205EA6" "#005faf"     "blue"         ))  ; blue-600
   (purple-dim '("#5E409D" "#5f5faf"     "magenta"      ))  ; purple-600
   (magenta-dim '("#A02F6F" "#af5f87"    "magenta"      ))  ; magenta-600
   (cyan-dim   '("#24837B" "#008787"     "cyan"         ))  ; cyan-600

   ;; Lighter accent variants (for highlights, etc.)
   (red-light    '("#F89A8A" "#ffafaf"   "red"          ))  ; red-200
   (orange-light '("#F9AE77" "#ffaf87"   "brightred"    ))  ; orange-200
   (green-light  '("#BEC97E" "#afaf87"   "green"        ))  ; green-200
   (yellow-light '("#ECCB60" "#ffff87"   "yellow"       ))  ; yellow-200
   (blue-light   '("#92BFDB" "#87afff"   "brightblue"   ))  ; blue-200
   (purple-light '("#C4B9E0" "#afafd7"   "magenta"      ))  ; purple-200
   (magenta-light '("#F4A4C2" "#ffafd7"  "magenta"      ))  ; magenta-200
   (cyan-light   '("#87D3C3" "#87d7d7"   "brightcyan"   ))  ; cyan-200

   ;; Paper color for special highlights
   (paper      '("#FFFCF0" "#ffffd7"     "white"        ))  ; paper

   ;; Universal syntax classes (required by doom-themes)
   (highlight      blue)
   (vertical-bar   (doom-darken base2 0.1))
   (selection      dark-blue)
   (builtin        magenta)
   (comments       (if doom-flexoki-brighter-comments cyan-dim base6))
   (doc-comments   (doom-lighten (if doom-flexoki-brighter-comments cyan-dim base6) 0.25))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      (doom-lighten magenta 0.3))
   (numbers        orange)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; Custom extra variables
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-flexoki-brighter-modeline
                                 (doom-darken blue 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if doom-flexoki-brighter-modeline
                                 (doom-darken blue 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-flexoki-padded-modeline
      (if (integerp doom-flexoki-padded-modeline) doom-flexoki-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override)
    :background (if doom-flexoki-comment-bg (doom-lighten bg 0.05) 'unspecified)
    :slant 'italic)
   (font-lock-comment-delimiter-face :foreground comments :slant 'italic)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-flexoki-brighter-modeline base8 highlight))

   ;; Font-lock faces with Flexoki colors
   (font-lock-builtin-face :foreground builtin)
   (font-lock-comment-face :foreground comments)
   (font-lock-constant-face :foreground constants)
   (font-lock-doc-face :foreground doc-comments)
   (font-lock-function-name-face :foreground functions)
   (font-lock-keyword-face :foreground keywords)
   (font-lock-string-face :foreground strings)
   (font-lock-type-face :foreground type)
   (font-lock-variable-name-face :foreground variables)
   (font-lock-warning-face :foreground warning)

   ;; Cursorline
   ((hl-line &override) :background base2)
   ;; Matching paren
   (show-paren-match :foreground yellow :background bg-alt :weight 'bold)


   ;;;; Popups / tooltips
   ;;(tooltip :background base2 :foreground fg)
   ;;(popup-face :background base2 :foreground fg)
   ;;(popup-tip-face :background base3 :foreground fg)

   ;;;; Diagnostics (lsp, flycheck, flymake)
   ;; (lsp-flycheck-info-unnecessary-face :foreground cyan :underline t)
   ;; (lsp-flycheck-warning-unnecessary-face :foreground yellow :underline t)

   ;; (flycheck-error :underline `(:style wave :color ,red))
   ;; (flycheck-warning :underline `(:style wave :color ,yellow))
   ;; (flycheck-info :underline `(:style wave :color ,cyan))
   ;; (flycheck-error-list-error :foreground red)
   ;; (flycheck-error-list-warning :foreground yellow)
   ;; (flycheck-error-list-info :foreground cyan)

   ;; (flymake-error :underline `(:style wave :color ,red))
   ;; (flymake-warning :underline `(:style wave :color ,yellow))
   ;; (flymake-note :underline `(:style wave :color ,cyan))

   ;;;; centaur-tabs
   (centaur-tabs-active-bar-face :background blue)
   (centaur-tabs-modified-marker-selected :inherit 'centaur-tabs-selected :foreground blue)
   (centaur-tabs-modified-marker-unselected :inherit 'centaur-tabs-unselected :foreground blue)

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-flexoki-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)

   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base1)

   ;;;; highlight-numbers
   (highlight-numbers-number :foreground orange)

   ;;;; hl-todo
   (hl-todo :foreground red :weight 'bold)

   ;;;; ivy
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)
   (ivy-minibuffer-match-face-1 :foreground blue :background nil :weight 'bold)
   (ivy-minibuffer-match-face-2 :foreground magenta :background nil :weight 'bold)
   (ivy-minibuffer-match-face-3 :foreground green :background nil :weight 'bold)
   (ivy-minibuffer-match-face-4 :foreground yellow :background nil :weight 'bold)

   ;;;; LaTeX-mode
   (font-latex-math-face :foreground green)
   (font-latex-script-char-face :foreground cyan)

   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground teal)
   ((markdown-code-face &override) :background (doom-lighten base1 0.05))
   (markdown-bold-face :foreground orange :weight 'bold)
   (markdown-italic-face :foreground violet :slant 'italic)
   (markdown-link-face :foreground blue)
   (markdown-url-face :foreground cyan :weight 'normal)

   ;;;; org-mode
   (org-block :background (doom-darken bg 0.1))
   (org-block-begin-line :foreground base6 :background (doom-darken bg 0.1))
   (org-code :foreground orange)
   (org-date :foreground cyan)
   (org-document-info :foreground blue)
   (org-document-title :foreground blue :weight 'bold)
   (org-done :foreground green)
   (org-headline-done :foreground base6)
   (org-level-1 :foreground magenta :weight 'bold)
   (org-level-2 :foreground orange :weight 'bold)
   (org-level-3 :foreground yellow :weight 'bold)
   (org-level-4 :foreground green :weight 'bold)
   (org-level-5 :foreground cyan :weight 'bold)
   (org-level-6 :foreground blue :weight 'bold)
   (org-level-7 :foreground violet :weight 'bold)
   (org-level-8 :foreground violet :weight 'bold)
   (org-link :foreground blue :underline t)
   (org-priority :foreground orange)
   (org-scheduled :foreground green)
   (org-scheduled-previously :foreground yellow)
   (org-scheduled-today :foreground green)
   (org-special-keyword :foreground base6)
   (org-table :foreground base7)
   (org-tag :foreground base6 :weight 'normal)
   (org-todo :foreground red :weight 'bold)
   (org-upcoming-deadline :foreground yellow)
   (org-verbatim :foreground green)
   (org-warning :foreground yellow)

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground red)
   (rainbow-delimiters-depth-2-face :foreground orange)
   (rainbow-delimiters-depth-3-face :foreground yellow)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground cyan)
   (rainbow-delimiters-depth-6-face :foreground blue)
   (rainbow-delimiters-depth-7-face :foreground violet)
   (rainbow-delimiters-depth-8-face :foreground magenta)

   ;;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground orange)

   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt)))

   ;;;; treemacs
   (treemacs-root-face :foreground fg :weight 'bold)
   (treemacs-directory-face :foreground fg)
   (treemacs-file-face :foreground fg)
   (treemacs-git-modified-face :foreground yellow)
   (treemacs-git-added-face :foreground green)
   (treemacs-git-conflict-face :foreground red)
   (treemacs-git-untracked-face :foreground orange)

   ;;;; vertico
   (vertico-current :background (doom-lighten bg 0.1))

   ;;;; which-key
   (which-key-key-face :foreground green)
   (which-key-group-description-face :foreground violet)
   (which-key-command-description-face :foreground blue)
   (which-key-local-map-description-face :foreground magenta)

   ;;;; whitespace
   (whitespace-tab :foreground base4 :background nil)
   (whitespace-trailing :foreground red :background base3))

  ;;;; Base theme variable overrides
  ())

;;; doom-flexoki-theme.el ends here
