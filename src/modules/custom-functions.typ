#import "@preview/drafting:0.2.2": margin-note, set-page-properties
#import "@preview/subpar:0.2.1"
#import "/src/constants/document-settings-constants.typ": *
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let ovgu-blue = rgb("#0068B4")
#let ovgu-darkgray = rgb("#606060")
#let ovgu-lightgray = rgb("#C0C0C0")
#let ovgu-orange = rgb("#F39100")
#let ovgu-purple = rgb("#7A003F")
#let ovgu-red = rgb("#D13F58")

/* ---- Convencience functions ---- */

#let long-month-name-by-language(
  date: none,
  month-names: none,
  content,
) = {
  show regex("[a-zA-Z]+"): month-name => month-names.at(date.month() - 1)

  content
}

/* ------------------------------- */

// A TODO marker. (inline: false -> margin note, inline: true -> box).
#let todo(inline: false, body) = if inline {
  rect(
    fill: ovgu-orange,
    stroke: black + 0.5pt,
    radius: 0.25em,
    width: 100%,
    body,
  )
} else {
  set rect(fill: ovgu-orange)
  margin-note(stroke: ovgu-orange, body)
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
