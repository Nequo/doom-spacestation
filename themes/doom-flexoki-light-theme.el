;;; doom-flexoki-light-theme.el --- An inky color scheme for prose and code (light) -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; warm shades of paper. This is the light variant.
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-flexoki-light-theme nil
  "Options for the `doom-flexoki-light' theme."
  :group 'doom-themes)

(defcustom doom-flexoki-light-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-flexoki-light-theme
  :type 'boolean)

(defcustom doom-flexoki-light-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-flexoki-light-theme
  :type 'boolean)

(defcustom doom-flexoki-light-comment-bg doom-flexoki-light-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their
legibility."
  :group 'doom-flexoki-light-theme
  :type 'boolean)

(defcustom doom-flexoki-light-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-flexoki-light-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-flexoki-light
  "An inky color scheme for prose and code (light variant)."
  :family 'doom-flexoki
  :background-mode 'light

  ;; name        default   256           16
  ;; Flexoki base colors - light mode uses paper and lighter base values
  ((bg         '("#FFFCF0" "#ffffd7"     "white"        ))  ; paper
   (fg         '("#100F0F" "#080808"     "black"        ))  ; black

   ;; Off-color variants for solaire-mode and subtle highlights
   (bg-alt     '("#F2F0E5" "#eeeeee"     "white"        ))  ; base-50
   (fg-alt     '("#6F6E69" "#626262"     "brightblack"  ))  ; base-600

   ;; Spectrum from bg to fg (base0 = starker bg, base8 = starker fg)
   (base0      '("#FFFCF0" "#ffffff"     "white"        ))  ; paper
   (base1      '("#F2F0E5" "#eeeeee"     "brightwhite"  ))  ; base-50
   (base2      '("#E6E4D9" "#e4e4e4"     "brightwhite"  ))  ; base-100
   (base3      '("#DAD8CE" "#d7d7d7"     "white"        ))  ; base-150
   (base4      '("#CECDC3" "#c6c6c6"     "white"        ))  ; base-200
   (base5      '("#B7B5AC" "#b2b2b2"     "brightblack"  ))  ; base-300
   (base6      '("#878580" "#8a8a8a"     "brightblack"  ))  ; base-500
   (base7      '("#575653" "#4e4e4e"     "brightblack"  ))  ; base-700
   (base8      '("#100F0F" "#080808"     "black"        ))  ; black

   (grey       base5)

   ;; Flexoki accent colors - using 600 values for light themes
   (red        '("#AF3029" "#af0000"     "red"          ))  ; red-600
   (orange     '("#BC5215" "#af5f00"     "brightred"    ))  ; orange-600
   (green      '("#66800B" "#5f8700"     "green"        ))  ; green-600
   (teal       '("#24837B" "#008787"     "brightgreen"  ))  ; cyan-600
   (yellow     '("#AD8301" "#af8700"     "yellow"       ))  ; yellow-600
   (blue       '("#205EA6" "#005faf"     "brightblue"   ))  ; blue-600
   (dark-blue  '("#1A4F8C" "#005f87"     "blue"         ))  ; blue-700
   (magenta    '("#A02F6F" "#af5f87"     "brightmagenta"))  ; magenta-600
   (violet     '("#5E409D" "#5f5faf"     "magenta"      ))  ; purple-600
   (cyan       '("#24837B" "#008787"     "brightcyan"   ))  ; cyan-600
   (dark-cyan  '("#1C6C66" "#008080"     "cyan"         ))  ; cyan-700

   ;; Lighter accent variants (400 values for highlights on light bg)
   (red-bright    '("#D14D41" "#d75f5f"  "red"          ))  ; red-400
   (orange-bright '("#DA702C" "#d78700"  "brightred"    ))  ; orange-400
   (green-bright  '("#879A39" "#87af5f"  "green"        ))  ; green-400
   (yellow-bright '("#D0A215" "#d7af00"  "yellow"       ))  ; yellow-400
   (blue-bright   '("#4385BE" "#5f87af"  "brightblue"   ))  ; blue-400
   (purple-bright '("#8B7EC8" "#8787d7"  "magenta"      ))  ; purple-400
   (magenta-bright '("#CE5D97" "#d75faf" "magenta"      ))  ; magenta-400
   (cyan-bright   '("#3AA99F" "#5fafaf"  "brightcyan"   ))  ; cyan-400

   ;; Very light accent variants (for subtle backgrounds)
   (red-bg      '("#FFE1D5" "#ffd7d7"    "red"          ))  ; red-50
   (orange-bg   '("#FFE7CE" "#ffd7af"    "brightred"    ))  ; orange-50
   (green-bg    '("#EDEECF" "#d7ffaf"    "green"        ))  ; green-50
   (yellow-bg   '("#FAEEC6" "#ffffd7"    "yellow"       ))  ; yellow-50
   (blue-bg     '("#E1ECEB" "#d7d7ff"    "brightblue"   ))  ; blue-50
   (purple-bg   '("#F0EAEC" "#d7d7ff"    "magenta"      ))  ; purple-50
   (magenta-bg  '("#FEE4E5" "#ffd7ff"    "magenta"      ))  ; magenta-50
   (cyan-bg     '("#DDF1E4" "#afffff"    "brightcyan"   ))  ; cyan-50

   ;; Black for special uses
   (black      '("#100F0F" "#080808"     "black"        ))  ; black

   ;; Universal syntax classes (required by doom-themes)
   (highlight      blue)
   (vertical-bar   (doom-darken base3 0.1))
   (selection      blue-bg)
   (builtin        magenta)
   (comments       (if doom-flexoki-light-brighter-comments cyan base6))
   (doc-comments   (doom-darken (if doom-flexoki-light-brighter-comments cyan base6) 0.15))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      (doom-darken magenta 0.2))
   (numbers        orange)
   (region         `(,(doom-darken (car bg-alt) 0.1) ,@(doom-darken (cdr base2) 0.1)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; Custom extra variables
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-flexoki-light-brighter-modeline
                                 (doom-lighten blue 0.3)
                               (doom-darken bg-alt 0.05)))
   (modeline-bg-alt          (if doom-flexoki-light-brighter-modeline
                                 (doom-lighten blue 0.35)
                               `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base2)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.05) ,@(cdr bg)))

   (-modeline-pad
    (when doom-flexoki-light-padded-modeline
      (if (integerp doom-flexoki-light-padded-modeline) doom-flexoki-light-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override)
    :background (if doom-flexoki-light-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-flexoki-light-brighter-modeline base8 highlight))

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

   ;;;; centaur-tabs
   (centaur-tabs-active-bar-face :background blue)
   (centaur-tabs-modified-marker-selected :inherit 'centaur-tabs-selected :foreground blue)
   (centaur-tabs-modified-marker-unselected :inherit 'centaur-tabs-unselected :foreground blue)

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-flexoki-light-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)

   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base7)

   ;;;; highlight-numbers
   (highlight-numbers-number :foreground orange)

   ;;;; hl-todo
   (hl-todo :foreground red :weight 'bold)

   ;;;; ivy
   (ivy-current-match :background blue-bg :distant-foreground base8 :weight 'normal)
   (ivy-minibuffer-match-face-1 :foreground blue :background nil :weight 'bold)
   (ivy-minibuffer-match-face-2 :foreground magenta :background nil :weight 'bold)
   (ivy-minibuffer-match-face-3 :foreground green :background nil :weight 'bold)
   (ivy-minibuffer-match-face-4 :foreground yellow :background nil :weight 'bold)

   ;;;; LaTeX-mode
   (font-latex-math-face :foreground green)
   (font-latex-script-char-face :foreground cyan)

   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-darken base1 0.02))
   (markdown-bold-face :foreground orange :weight 'bold)
   (markdown-italic-face :foreground violet :slant 'italic)
   (markdown-link-face :foreground blue)
   (markdown-url-face :foreground cyan :weight 'normal)

   ;;;; org-mode
   (org-block :background (doom-darken bg 0.02))
   (org-block-begin-line :foreground base6 :background (doom-darken bg 0.02))
   (org-code :foreground orange)
   (org-date :foreground cyan)
   (org-document-info :foreground blue)
   (org-document-title :foreground blue :weight 'bold)
   (org-done :foreground green)
   (org-headline-done :foreground base5)
   (org-level-1 :foreground red :weight 'bold)
   (org-level-2 :foreground orange :weight 'bold)
   (org-level-3 :foreground yellow :weight 'bold)
   (org-level-4 :foreground green :weight 'bold)
   (org-level-5 :foreground cyan :weight 'bold)
   (org-level-6 :foreground blue :weight 'bold)
   (org-level-7 :foreground violet :weight 'bold)
   (org-level-8 :foreground magenta :weight 'bold)
   (org-link :foreground cyan :underline t)
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
   (vertico-current :background (doom-darken bg 0.05))

   ;;;; which-key
   (which-key-key-face :foreground green)
   (which-key-group-description-face :foreground violet)
   (which-key-command-description-face :foreground blue)
   (which-key-local-map-description-face :foreground magenta)

   ;;;; whitespace
   (whitespace-tab :foreground base4 :background nil)
   (whitespace-trailing :foreground red :background red-bg))

  ;;;; Base theme variable overrides
  ())

;;; doom-flexoki-light-theme.el ends here
