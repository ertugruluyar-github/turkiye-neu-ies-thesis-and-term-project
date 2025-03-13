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

#let change-long-month-name(date: datetime.today(), month-names: none, content) = {
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


// A ParCIO-like table with a design taken from the LaTeX template.
#let parcio-table(max-rows, ..args) = table(
  ..args,
  row-gutter: (2.5pt, auto),
  stroke: (x, y) => (
    left: 0.5pt,
    right: 0.5pt,
    top: if y <= 1 { 0.5pt },
    bottom: if y == 0 or y == max-rows - 1 { 0.5pt },
  )
)

// Nicer handling of (multiple) appendices. Specify 'reset: true' with your first appendix to reset the heading counter!
/*
#let appendix(reset: false, title:"Ekin Başlığı", label-text: none, body) = {
  if reset { counter(heading).update(1) }
  [
    #heading(level: 2, numbering: APPENDICES-NUMBERING, supplement: APPENDICES-SUPPLEMENT, title)#label(lower(STRING-APPENDIX) + APPENDIX-PREFIX-SEPERATOR + label-text)
    #body
  ]
}
*/
