#import "/src/constants/document-settings-constants.typ": MARGIN

#let title-page-style(content) = {
  // Sayfa ayarlarını ayarla. [Set page settings.]
  set page(
    header: none,
    footer: none,
    margin: MARGIN,
    numbering: none,
    columns: 1,
  )

  // Her şeyi ortaya hizalandı. [Everything is centered.]
  set align(center)

  // Paragraf boşlukları. [Paragraph spacing]
  set par(
    leading: 1em,
    spacing: 1em,
  )

  content
}
