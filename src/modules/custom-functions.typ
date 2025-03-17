#import "@preview/drafting:0.2.2": margin-note, set-page-properties
#import "@preview/subpar:0.2.1"
#import "/src/constants/document-settings-constants.typ": *
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

/* ---- Convencience functions ---- */

// A TODO marker. (inline: false -> margin note, inline: true -> box).
#let todo(inline: false, body) = if inline {
  rect(
    fill: orange,
    stroke: black + 0.5pt,
    radius: 0.25em,
    width: 100%,
    body,
  )
} else {
  set rect(fill: orange)
  margin-note(stroke: orange, body)
}


// Subfigures.
#let subfigure = subpar.grid.with(
  numbering: num => {
    numbering("1.1", counter(heading).get().first(), num)
  },
  numbering-sub-ref: (sup, sub) => {
    numbering("1.1a", counter(heading).get().first(), sup, sub)
  },
)
