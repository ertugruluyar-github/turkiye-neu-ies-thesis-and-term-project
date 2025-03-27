#import "/src/constants/document-settings-constants.typ": PARAGRAPH-SPACING-SIZE

// Kaynaklar sayfası stili. [References page style.]
#let bibliography-page-style(content) = {
  // Kaynaklar sayfasındaki paragraf stili. [Paragraph style in References page.]
  set par(
    first-line-indent: 0cm,
    hanging-indent: 1.25cm,
    justify: true,
    leading: 1em,
    spacing: PARAGRAPH-SPACING-SIZE,
  )

  content
}
