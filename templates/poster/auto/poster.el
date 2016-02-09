(TeX-add-style-hook
 "poster"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("baposter" "landscape" "archE" "fontscale=0.3")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("algorithm2e" "vlined") ("fontenc" "T1")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "baposter"
    "baposter10"
    "algorithm2e"
    "times"
    "calc"
    "amsmath"
    "amssymb"
    "relsize"
    "multirow"
    "multicol"
    "fontenc"
    "ae"
    "url"
    "enumitem"
    "graphicx")
   (TeX-add-symbols
    "compresslist")
   (LaTeX-add-environments
    '("posterbox" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "refs")))
