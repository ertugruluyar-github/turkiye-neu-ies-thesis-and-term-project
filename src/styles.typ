#import "/src/constants.typ": (
  STRING-CHAPTER,
  HEADING-NUMBERING,
  APPENDIX-HEADING-NUMBERING,
  APPENDIX-REFERENCE-NUMBERING,
  CHAPTER-REFERENCE-SUPPLEMENT,
  HEADING-REFERENCE-SUPPLEMENT,
  APPENDIX-REFERENCE-SUPPLEMENT,
  APPENDIX-REFERENCE-SUFFIX-SEPARATOR,
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
