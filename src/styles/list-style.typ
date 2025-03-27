#import "/src/constants/numbering-constants.typ": LIST-NUMBERING

// Liste stili. [List style.]
#let list-style(content) = {
  // Numaralı liste stili [Numbered list style]
  set enum(
    body-indent: 0.5em,
    full: false,
    indent: 0cm,
    number-align: end + top,
    numbering: LIST-NUMBERING,
    reversed: false,
    spacing: auto,
    start: auto,
    tight: true,
  )

  // Madde işaretli liste stili [Bulleted list style]
  set list(
    body-indent: 0.5em,
    indent: 0cm,
    marker: (sym.circle.filled, sym.circle.stroked, sym.square.filled),
    spacing: auto,
    tight: true,
  )

  content
}
