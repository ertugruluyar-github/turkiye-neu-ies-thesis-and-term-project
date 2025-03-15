#import "/src/constants/document-settings-constants.typ": PARAGRAPH-SPACING-SIZE

#let bibliography-section-style(content) = {
  // Kaynakça bölümündeki paragraf stili. [Paragraph Style in Bibliography Section]
  set par(
    first-line-indent: (amount: 0cm, all: true),
    hanging-indent: 1.25cm,
    justify: true,
    leading: 1em,
    spacing: PARAGRAPH-SPACING-SIZE,
  )

  content
}
