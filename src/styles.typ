#import "/src/constants.typ": (
  HEADING-NUMBERING,
  APPENDICES-HEADING-NUMBERING,
  APPENDICES-REFERENCE-NUMBERING,
  APPENDICES-SUPPLEMENT,
  PARAGRAPH-FIRST-LINE-INDENT,
  TABLE-FIGURE-SUPPLEMENT,
  FIGURE-CAPTION-SEPARATOR,
  IMAGE-FIGURE-SUPPLEMENT,
  ALTERNATE-FONT-SIZE,
  FIGURE-CAPTION-PREFIX-TEXT-FONT-WEIGHT,
  FIGURE-CAPTION-TITLE-TEXT-FONT-WEIGHT,
  FIGURE-NUMBERING,
  PARAGRAPH-LEADING-SIZE,
  PARAGRAPH-SPACING-SIZE,
)

#let set-bibliography-styles(content) = {
  set par(
    justify: true,
    first-line-indent: 0pt,
    leading: 1em,
    spacing: PARAGRAPH-SPACING-SIZE,
  )
  content
}

#let set-heading-spacing(content) = {
  // 1.5 satır aralığı yapmak için 0.5 satır aralığı kadar boşluk eklendi ve paragrafdan sonraki boşluk eklendi. NOT: 1em = FONT-SIZE = 12pt ve buna 0.5em eklenerek 1.5 satır aralığı başlığa uygulanmış oldu.
  show heading.where(level: 1): set block(above: 0pt, below: 0.5em + PARAGRAPH-SPACING-SIZE)

  // Başlığın üstünde, 1.5 satır aralığı yapmak için 0.5 satır aralığı kadar boşluk + paragrafdan sonraki boşluk miktarı kadar boşluk eklendi. Başlığın altında 1.5 satır aralığı yapmak için 0.5 satır aralığı kadar boşluk eklendi.
  show heading
    .where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set block(above: 0.5em + PARAGRAPH-SPACING-SIZE, below: 0.5em)
  content
}

// Diğer bölümlerdeki 1. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda var, PDF dökümanı hatlarında var.
#let set-heading-styles-for-front-matter-of-thesis(content) = {
  //
  show heading.where(level: 1): set heading(numbering: none, outlined: true, bookmarked: true)

  //
  show heading
    .where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set heading(numbering: none, outlined: false, bookmarked: true)

  //
  show heading.where(level: 1): set align(center)

  //
  show heading
    .where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set align(left)

  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  //
  show: set-heading-spacing
  content
}

/* ---- Table Style ---- */
#let set-table-style(content) = {
  show table.cell.where(y: 0): set text(weight: "bold")
  let normal-stroke-size = 1pt
  let bold-stroke-size = 1.5pt

  set table(
    align: center + horizon,
    gutter: 0pt,
    inset: (x: 0.3cm, y: 0.25cm),
    stroke: (x, y) => (
      left: none,
      top: if y == 0 { bold-stroke-size } else { 0pt },
      right: none,
      bottom: if y > 1 { normal-stroke-size } else if y == 1 or (x == 0 and y == 0) { bold-stroke-size } else { 0pt },
    ),
    fill: none,
  )

  show table: it => {
    set text(size: ALTERNATE-FONT-SIZE)
    set table.footer(repeat: true)
    show table.footer: set table.cell(align: left, colspan: 9)
    it
  }

  show table.footer: it => {
    set table.footer(repeat: true)
    set table.cell(align: left, colspan: 9)
    set text(size: ALTERNATE-FONT-SIZE)
    it
  }
  content
}

/* ---- Figure Styles ---- */
#let set-figure-styles(content) = {
  //
  show figure.where(kind: table): set figure(
    supplement: TABLE-FIGURE-SUPPLEMENT,
    placement: none,
    gap: 0.5em,
  )

  //
  show figure.where(kind: table): set figure.caption(
    position: top,
    separator: FIGURE-CAPTION-SEPARATOR,
  )

  //
  show figure.where(kind: image): set figure(
    supplement: IMAGE-FIGURE-SUPPLEMENT,
    placement: none,
    gap: 0.5em,
  )

  //
  show figure.where(kind: image): set figure.caption(
    position: bottom,
    separator: FIGURE-CAPTION-SEPARATOR,
  )

  //
  show figure.caption: it => {
    set text(size: ALTERNATE-FONT-SIZE)
    (
      text(
        weight: FIGURE-CAPTION-PREFIX-TEXT-FONT-WEIGHT,
        it.supplement + " " + context it.counter.display(it.numbering) + it.separator,
      )
        + text(weight: FIGURE-CAPTION-TITLE-TEXT-FONT-WEIGHT, it.body)
    )
  }

  // Tabloyu bölme
  //show figure.where(kind: table): set block(breakable: true)

  /* ---- General design choices. --- */

  // Set spacing of figures.
  show figure: set block(above: 1.5em, below: 0.5em)
  set figure(
    numbering: n => numbering(FIGURE-NUMBERING, counter(heading).get().first(), n),
    gap: 1em,
  )
  content
}

/* ---- Table of Contents Style ---- */
#let set-table-of-contents-style(content) = {
  //
  set par(leading: 0.75em, spacing: 1em)

  //
  set outline(indent: auto)

  //
  show outline.entry: it => {
    set outline.entry(fill: repeat(justify: true, gap: 0.1em)[.])
    it
  }

  // Set Level 1 outlines' text bold.
  show outline.entry.where(level: 1): set text(weight: "bold")

  /*
  // Set headings and special appendices numbering
  show outline.entry.where(level: 1).or(outline.entry.where(level: 2)).or(outline.entry.where(level: 3)): it => {
    let cc = if it.element.numbering != none {
      numbering(it.element.numbering, ..counter(heading).at(it.element.location()))
    }

    //let indent = h(1.5em + ((it.level - 2) * 1.5em))
    /*
      box(
        grid(
          columns: (auto, 1fr, auto),
          indent + link(it.element.location())[#cc #h(0.1em) #it.element.body #h(5pt)],
          it.fill,
          box(width: 1.5em, align(right, it.page)),
        ),
      )
    */
    it
  }
  */
  content
}

// Diğer bölümlerdeki 2. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda yok, PDF dökümanı hatlarında var.
#let set-heading-styles-for-main-sections-of-thesis(content) = {
  //
  set heading(numbering: HEADING-NUMBERING, outlined: true, bookmarked: true)
  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
  )
  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")
  //
  show heading: set align(left)

  //
  show: set-heading-spacing
  content
}

//
#let set-styles-for-back-matter-of-thesis(content) = {
  //
  show heading: set align(left)

  //
  show heading.where(level: 1): set heading(numbering: none, outlined: true, bookmarked: true)

  //
  show heading.where(level: 2): set heading(
    numbering: APPENDICES-HEADING-NUMBERING,
    supplement: APPENDICES-SUPPLEMENT,
    outlined: true,
    bookmarked: true,
  )

  //
  show ref: it => {
    APPENDICES-SUPPLEMENT + numbering(APPENDICES-REFERENCE-NUMBERING, ..counter(heading).at(it.element.location()))
  }

  //
  show heading
    .where(level: 3)
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set heading(outlined: false, bookmarked: false)

  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  //
  set par(justify: true, first-line-indent: PARAGRAPH-FIRST-LINE-INDENT)

  //
  show: set-heading-spacing
  content
}
