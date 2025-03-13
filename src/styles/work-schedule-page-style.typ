#import "/src/constants/document-settings-constants.typ": ALTERNATE-FONT-SIZE

#let work-schedule-page-style(content) = {
  // Sayfa başlığını ortala
  show heading.where(level: 1): set align(center)

  // Paragraf ayarları
  set par(
    justify: false,
    leading: 1em,
    spacing: 1.5em,
    first-line-indent: (amount: 0cm, all: true),
  )

  // Tablo ayarları
  set table(
    column-gutter: auto,
    rows: auto,
    row-gutter: auto,
    inset: (
      left: 0.5em,
      top: 1em,
      bottom: 1em,
      right: 0.5em,
    ),
    align: left,
    stroke: 0.25pt + black,
  )

  // Tablo yazı tipi boyutu
  show table: set text(size: ALTERNATE-FONT-SIZE)

  // Tablo başlığı ayarları
  set table.header(repeat: false)

  // Tablo altlığı ayarları
  set table.footer(repeat: false)

  content
}
