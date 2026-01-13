;;; doom-apprentice-theme.el --- inspired by Apprentice -*- lexical-binding: t; no-byte-compile: t; -*-
;; Author: Nadim Edde Gomez <https://github.com/Nequo>
;; Maintainer: Nadim Edde Gomez <https://github.com/Nequo>
;; Source: https://github.com/romainl/Apprentice
;;
;;; Commentary:
;;
;; The Apprentice theme doomified.
;;
;;; Code:


(require 'doom-themes)

(defgroup doom-apprentice-theme nil
  "Options for the `doom-apprentice' theme."
  :group 'doom-themes)

(defcustom doom-apprentice-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-apprentice-theme
  :type 'boolean)

(defcustom doom-apprentice-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-apprentice-theme
  :type 'boolean)

(defcustom doom-apprentice-comment-bg doom-apprentice-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-apprentice-theme
  :type 'boolean)

(defcustom doom-apprentice-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-apprentice-theme
  :type '(choice integer boolean))

(def-doom-theme doom-apprentice
  "A dark theme inspired by Apprentice."
  :family 'doom-apprentice
  :background-mode 'dark

  ((bg         '("#262626" "#262626"     "black"  ))
   (fg         '("#bcbcbc" "#bcbcbc"     "lightgrey"  ))

   (bg-alt     '("#1c1c1c" "#1c1c1c"     "black"        ))
   (fg-alt     '("#585858" "#585858"     "darkgrey"        ))

   (base0      '("#080808" "#080808"     "black"        ))
   (base1      '("#121212" "#121212"     "black"  ))
   (base2      '("#181818" "#181818"     "black"  ))
   (base3      '("#1e1e1e" "#1e1e1e"     "black"  ))
   (base4      '("#444444" "#444444"     "darkgrey"  ))
   (base5      '("#585858" "#585858"     "darkgrey"  ))
   (base6      '("#6c6c6c" "#6c6c6c"     "lightgrey"  ))
   (base7      '("#bcbcbc" "#bcbcbc"     "lightgrey"  ))
   (base8      '("#ffffff" "#ffffff"     "white"        ))

   (grey       base4)
   (red        '("#af5f5f" "#af5f5f" "darkred"          ))
   (orange     '("#b39066" "#b39066" "red"    ))
   (green      '("#5f875f" "#5f875f" "darkgreen"        ))
   (light-green '("#87af87" "#87af87" "green"        ))
   (teal       '("#5fafaf" "#5fafaf" "cyan"  ))
   (yellow     '("#ffffaf" "#ffffaf" "yellow"       ))
   (ocre       '("#87875f" "#87875f" "darkyellow"       ))
   (blue       '("#5f87af" "#5f87af" "darkblue"   ))
   (light-blue '("#87afd7" "#87afd7" "blue"         ))
   (dark-blue  '("#5f87af" "#5f87af" "darkblue"         ))
   (magenta    '("#8787af" "#8787af" "magenta"))
   (dark-magenta '("#5f5f87" "#5f5f87" "darkmagenta"      ))
   (violet     '("#af5f87" "#af5f87" "darkmagenta"      ))
   (cyan       '("#5fafaf" "#5fafaf" "cyan"   ))
   (dark-cyan  '("#5f8787" "#5f8787" "darkcyan"         ))

   (highlight      light-blue)
   (vertical-bar   grey)
   (selection      dark-blue)
   (builtin        dark-cyan)
   (comments       (if doom-apprentice-brighter-comments dark-cyan base6))
   (doc-comments   (doom-lighten (if doom-apprentice-brighter-comments dark-cyan base6) 0.25))
   (constants      orange)
   (functions      yellow)
   (keywords       light-blue)
   (methods        yellow)
   (operators      light-blue)
   (type           magenta)
   (strings        light-green)
   (variables      fg)
   (numbers        orange)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          red)
   (warning        orange)
   (success        light-green)
   (vc-modified    orange)
   (vc-added       light-green)
   (vc-deleted     red)

   (modeline-fg              fg)
   (modeline-fg-alt          base5)
   (modeline-bg              (if doom-apprentice-brighter-modeline
                                 (doom-darken blue 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if doom-apprentice-brighter-modeline
                                 (doom-darken blue 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-apprentice-padded-modeline
      (if (integerp doom-apprentice-padded-modeline) doom-apprentice-padded-modeline 4))))


  (((line-number &override) :foreground base6 :background bg-alt)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override)
    :background (if doom-apprentice-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-apprentice-brighter-modeline base8 highlight))

   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground light-blue)
   (doom-modeline-bar :background (if doom-apprentice-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)
   (elscreen-tab-other-screen-face :background "#303030" :foreground "#1c1c1c")
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)
   (font-latex-math-face :foreground green)
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground orange)
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt)))

   ;; ((font-lock-preprocessor-face &override) :foreground cyan)
   ;; (font-lock-function-name-face :foreground yellow)
   ;; (font-lock-variable-name-face :foreground fg)
   ;; (font-lock-constant-face :foreground orange)
   ;; (font-lock-string-face :foreground light-green)
   ;; (font-lock-type-face :foreground magenta)
   ;; (font-lock-keyword-face :foreground light-blue)
   ;; (font-lock-builtin-face :foreground light-blue)
   ;; (font-lock-comment-face :foreground base6)
   )

  ())

;;; doom-apprentice-theme.el ends here
