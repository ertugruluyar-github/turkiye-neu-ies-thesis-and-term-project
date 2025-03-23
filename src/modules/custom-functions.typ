#import "@preview/subpar:0.2.1"
#import "/src/constants/document-settings-constants.typ": *
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

/* ---- Convencience functions ---- */

// Subfigures.
#let subfigure = subpar.grid.with(
  numbering: num => {
    numbering("1.1", counter(heading).get().first(), num)
  },
  numbering-sub-ref: (sup, sub) => {
    numbering("1.1a", counter(heading).get().first(), sup, sub)
  },
)
