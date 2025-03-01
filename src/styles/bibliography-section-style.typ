#import "/src/constants.typ": PARAGRAPH-SPACING-SIZE

#let bibliography-section-style(content) = {
  // Kaynakça bölümündeki paragraf stili. [Paragraph Style in Bibliography Section]
  set par(
    justify: true,
    first-line-indent: (amount: 0cm, all: true),
    leading: 1em,
    spacing: PARAGRAPH-SPACING-SIZE,
  )

  content
}
