#import "/src/constants.typ": (
  STRING-CHAPTER,
  HEADING-NUMBERING,
  APPENDIX-HEADING-NUMBERING,
  APPENDIX-REFERENCE-NUMBERING,
  CHAPTER-REFERENCE-SUPPLEMENT,
  HEADING-REFERENCE-SUPPLEMENT,
  APPENDIX-REFERENCE-SUPPLEMENT,
  APPENDIX-REFERENCE-SUFFIX-SEPARATOR,
  TABLE-FIGURE-REFERENCE-SUPPLEMENT,
  IMAGE-FIGURE-REFERENCE-SUPPLEMENT,
  FIGURE-NUMBERING,
  FIGURE-CAPTION-SEPARATOR,
  FIGURE-CAPTION-PREFIX-TEXT-FONT-WEIGHT,
  FIGURE-CAPTION-TITLE-TEXT-FONT-WEIGHT,
  ALTERNATE-FONT-SIZE,
  PARAGRAPH-FIRST-LINE-INDENT,
  PARAGRAPH-LEADING-SIZE,
  PARAGRAPH-SPACING-SIZE,
)
#import "/src/styles/heading-spacing-style.typ": heading-spacing-style

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
  show: heading-spacing-style

  content
}

/* ---- Figure Styles ---- */
#let set-figure-styles(content) = {
  //
  show figure.where(kind: table): set figure(
    supplement: TABLE-FIGURE-REFERENCE-SUPPLEMENT,
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
    supplement: IMAGE-FIGURE-REFERENCE-SUPPLEMENT,
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
  set outline.entry(fill: repeat(justify: true, gap: 0.1em)[.])

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
  show heading: set align(left)

  //
  show heading.where(level: 1).or(heading.where(level: 2)).or(heading.where(level: 3)): set heading(
    numbering: HEADING-NUMBERING,
    outlined: true,
    bookmarked: true,
  )

  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
  )

  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  //
  show: heading-spacing-style

  // Create "Chapter X." heading for every numbered level 1 heading.
  show heading.where(level: 1): it => {
    if it.numbering != none {
      // Reset figure counters.
      counter(figure.where(kind: image)).update(0)
      counter(figure.where(kind: table)).update(0)
      counter(figure.where(kind: raw)).update(0)

      align(center)[
        #let chapter-heading-prefix = [
          #set heading(level: 1, numbering: HEADING-NUMBERING, outlined: false, bookmarked: false)
          // Sondaki noktayı kaldır.
          #upper(STRING-CHAPTER) #counter(heading).get().first()
        ]
        #chapter-heading-prefix \
        // 1.5 satır aralığı (1em karakterin kendisi + 0.5em) ve paragraflar arası boşluk miktarı kadar boşluk eklendi.
        #v(0.5em + PARAGRAPH-SPACING-SIZE)
      ]
    }
    it
  }

  /* Adjust refs: "Chapter XYZ" instead of "Section XYZ". */
  set ref(
    supplement: it => {
      if it.func() == heading {
        if it.level == 1 {
          CHAPTER-REFERENCE-SUPPLEMENT
        } else {
          HEADING-REFERENCE-SUPPLEMENT
        }
      } else {
        it.supplement
      }
    },
  )

  content
}

//
#let set-styles-for-back-matter-of-thesis(content) = {
  //
  show heading: set align(left)

  //
  show heading.where(level: 1): set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
    supplement: CHAPTER-REFERENCE-SUPPLEMENT,
  )

  //
  show heading.where(level: 2).or(heading.where(level: 3)): set heading(
    numbering: APPENDIX-HEADING-NUMBERING,
    outlined: true,
    bookmarked: true,
    supplement: APPENDIX-REFERENCE-SUPPLEMENT,
  )

  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set heading(
    numbering: none,
    outlined: false,
    bookmarked: false,
    supplement: HEADING-REFERENCE-SUPPLEMENT,
  )

  //
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  //
  set par(justify: true, first-line-indent: (amount: PARAGRAPH-FIRST-LINE-INDENT, all: true))

  //
  show: heading-spacing-style

  //
  show ref: it => {
    if it.element != none and it.element.func() == heading {
      if it.element.level == 1 {
        it.element.supplement + APPENDIX-REFERENCE-SUFFIX-SEPARATOR + it.element.body
      } else if it.element.level == 2 or it.element.level == 3 {
        (
          APPENDIX-REFERENCE-SUPPLEMENT
            + numbering(APPENDIX-REFERENCE-NUMBERING, ..counter(heading).at(it.element.location()))
        )
      } else {
        it.element.supplement + APPENDIX-REFERENCE-SUFFIX-SEPARATOR + it.element.body
      }
    } else {
      it
    }
  }

  content
}
