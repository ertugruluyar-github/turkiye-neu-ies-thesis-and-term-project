#import "modules/title-page.typ": *
#import "modules/custom-functions.typ": *
#import "constants.typ": *

#let template_configurations(
  title: [Title], 
  author: (fullname: "Author's fullname", orcid: "xxxx-xxxx-xxxx-xxxx"), 
  keywords-tur: "anahtar kelime 1, anahtar kelime 2, anahtar kelime 3, anahtar kelime 4, anahtar kelime 5",
  keywords-eng: "keyword 1, keyword 2, keyword 3, keyword 4, keyword 5",  
  thesis-type: "Yüksek Lisans/Doktora",
  is-thesis-proposal: false,
  reviewers: (), 
  date: datetime.today(),
  lang: "tr",
  header-logo: none,
  body
) = {
  /* Basic document rules. */
  set document(title: title, author: author.fullname)
  set page("a4", margin: 2.5cm, number-align: right, numbering: "i", footer: none)
  set text(font: FONT_NAME, 12pt, lang: lang)
  set heading(numbering: "1.1.")
  set par(justify: true)
  set math.equation(numbering: "(1)")

  /* ---- General design choices. --- */

  // Enable heading specific figure numbering and increase spacing.
  show figure: set block(spacing: 1.5em)
  set figure(
    numbering: n => numbering("1.1", counter(heading).get().first(), n), 
    gap: 1em
  )

  // Add final period after fig-numbering (1.1 -> 1.1.).
  // Additionally, left align caption if it spans multiple lines.
  show figure.caption: c => {
    grid(
      columns: 2,
      align(top)[#c.supplement #context c.counter.display(c.numbering).#c.separator],
      align(left, c.body),
    )
  }

  /* ---- Stylization of headings / chapters. ---- */

  // Create "Chapter X." heading for every numbered level 1 heading.
  show heading.where(level: 1): h1 => {
    if h1.numbering != none {
      pagebreak(weak: true)

      // Reset figure counters.
      counter(figure.where(kind: image)).update(0)
      counter(figure.where(kind: table)).update(0)
      counter(figure.where(kind: raw)).update(0)

      align(center)[
        #set text(_huge)
        #let heading-prefix = if h1.supplement == [#STRING_APPANDIX] [
          #upper(STRING_APPANDIX) #counter(heading).display(h.numbering)
        ] else [
          #set heading(level: 1, numbering: "1")
          #upper(STRING_CHAPTER) #counter(heading).get().first() // Sondaki noktayı kaldır.
        ]
        #heading-prefix
        #v(0.25em)
      ]
    }
    h1
  }

  show heading.where(level: 2): h => block({
    if h.numbering != none {
      [#counter(heading).display()~~#h.body]
    } else {
      h
    }
  })

  /* Adjust refs: "Chapter XYZ" instead of "Section XYZ". */
  set ref(supplement: it => {
    if it.func() == heading and it.supplement == auto {
      if it.level > 1 {
        STRING_SECTION
      } else {
        STRING_CHAPTER
      }
    } else {
      it.supplement
    }
  })

  /* ---- Customization of ToC ---- */

  set outline(depth: 4, indent: n => n * 1em, fill: repeat(justify: true, gap: 0.1em)[.], title: [#upper(STRING_CONTENTS)])
  show outline: outline => {
    show heading: pad.with(bottom: 0em)
    outline
  }

  // Level 1 chapters get bold and no dots.
  show outline.entry.where(level: 1): it => {
    set text(weight: "bold")
    let cc = if it.element.numbering != none {
      numbering(
        it.element.numbering, 
        ..counter(heading).at(it.element.location())
      )
    } else {
      h(-0.5em)
    }
    
    v(0.1em)
    box(grid(
      columns: (auto, 1fr, auto),
      link(it.element.location())[#cc #h(0.5em) #it.element.body],
      h(1fr),
      it.page,
    ))
  }

  // Level 2 and deeper.
  show outline.entry.where(level: 2)
    .or(outline.entry.where(level: 3)): it => {
    let cc = numbering("1.1.", ..counter(heading).at(it.element.location()))
    let indent = h(1.5em + ((it.level - 2) * 2.5em))
    
    box(
      grid(
        columns: (auto, 1fr, auto),
        indent + link(it.element.location())[#cc#h(1em)#it.element.body#h(5pt)],
        it.fill,
        box(width: 1.5em, align(right, it.page)),
      ),
    )
  }

  /* ----------------------------- */

  show raw.where(block: true): r => {
    set par(justify: false)
    show raw.line: l => {
      box(table(
        columns: (-1.25em, 100%),
        stroke: 0pt,
        inset: 0em,
        column-gutter: 1em,
        align: (x, y) => if x == 0 { right } else { left },
        text(fill: ovgu-darkgray, str(l.number)),
        l.body,
      ))
    }
    
    set align(left)
    rect(width: 100%, stroke: gray + 0.5pt, inset: 0.75em, r)
  }

  /* ----------------------------- */

  show heading: set block(spacing: 1.25em)
  show heading: set text(font: FONT_NAME, _Large)
  
  set footnote.entry(separator: line(length: 40%, stroke: 0.5pt))
  set list(marker: (sym.bullet, "◦"))

  /* --- Title Page --- */

  title-page(
    title,
    author,
    thesis-type,
    is-thesis-proposal,
    header-logo,
    reviewers,
    date
  )
  
  show raw: set text(12pt * 0.95)
  pagebreak()
  set-page-properties()

  /* --- Abstract --- */

  align(center)[
  #set heading(level: 1, numbering: none)
  = Abstract
  ]
  par(justify: true)[#include "../template/sections/03-other-sections/abstract-tur.typ"]
  align(left)[*Anahtar Kelimeler:* #keywords-tur]
  
  pagebreak()

  align(center)[
  #set heading(level: 1, numbering: none)
  = Özet
  ]
  par(justify: true)[#include "../template/sections/03-other-sections/abstract-eng.typ"]
  align(left)[*Keywords:* #keywords-eng]
  /* --- Document Body --- */

  pagebreak(to: "odd")
  body
}