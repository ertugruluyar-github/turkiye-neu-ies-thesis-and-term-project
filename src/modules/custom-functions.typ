#import "@preview/drafting:0.2.0": margin-note, set-page-properties
#import "@preview/subpar:0.1.1"
#import "../constants.typ": *

#let ovgu-blue = rgb("#0068B4")
#let ovgu-darkgray = rgb("#606060")
#let ovgu-lightgray = rgb("#C0C0C0")
#let ovgu-orange = rgb("#F39100")
#let ovgu-purple = rgb("#7A003F")
#let ovgu-red = rgb("#D13F58")

#let _large = 14.4pt
#let _Large = 17.28pt 
#let _LARGE = 20.74pt
#let _huge = 24.88pt

/* ---- Convencience functions ---- */

#let if-none(x, other) = if other == none { x } else { other }

#let roman-numbering(content, reset: true) = {
  if reset { counter(page).update(1) }
  set page(footer: auto, numbering: PAGE_NUMBERING_ROMAN)
  content
}

#let arabic-numbering(content, alternate: true, reset: true) = {
  if reset { counter(page).update(1) }

  let footer = if alternate {
    context {
      let page-count = counter(page).get().first()
      let page-align = if calc.odd(page-count) { right } else { left } 
      align(page-align, counter(page).display(PAGE_NUMBERING_ARABIC))
    }
  } else {
    auto
  }

  set page(footer: footer, numbering: PAGE_NUMBERING_ARABIC)
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
    body
  )
} else {
  set rect(fill: ovgu-orange)
  margin-note(stroke: ovgu-orange, body)
}

// Like \section* in LaTeX. (unnumbered level 2 heading, not in ToC).
#let section = heading.with(level: 2, outlined: false, numbering: none)

// A neat inline-section in smallcaps and sans font.
#let inline-section(title) = smallcaps[*#text(font: "Libertinus Sans", title)*] 

// Tamamen boş sayfa, sayfa numrasız. [Fully empty page, no page numbering.]
#let empty-page-with-no-page-numbering = page([], footer: [])

// Boş sayfa, Arapça sayfa numralı. [Empty page, with arabic page numbering.]
#let empty-page-with-arabic-page-numbering = page([], numbering: PAGE_NUMBERING_ARABIC)

// Boş sayfa, Roman sayfa numralı. [Empty page, with romen page numbering.]
#let empty-page-with-romen-page-numbering = page([], numbering: PAGE_NUMBERING_ROMAN)

// Subfigures.
#let subfigure = subpar.grid.with(
  numbering: (num) => {
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
    bottom: if y == 0 or y == max-rows - 1 { 0.5pt }
  )
)

// Nicer handling of (multiple) appendices. Specify `reset: true` with your first appendix to reset the heading counter!
/*
#let appendix(reset: false, title:"Ekin Başlığı", label-text: none, body) = {
  if reset { counter(heading).update(1) }
  [
    #heading(level: 2, numbering: APPENDICES-NUMBERING, supplement: APPENDICES_SUPPLEMENT, title)#label(lower(STRING-APPANDIX) + APPANDIX-PREFIX-SEPERATOR + label-text)
    #body
  ]
}
*/
