#import "/src/constants/document-settings-constants.typ": ALTERNATE-FONT-SIZE-2, PARAGRAPH-SPACING-SIZE

#let raw-style(content) = {
  //
  show raw: set text(ALTERNATE-FONT-SIZE-2)

  //
  show raw.where(block: true): it => {
    set align(center)

    set par(
      first-line-indent: 0cm,
      hanging-indent: 0cm,
      justify: false,
      leading: 1em,
      spacing: PARAGRAPH-SPACING-SIZE,
    )

    //
    show raw.line: line => {
      box(
        grid(
          align: (x, y) => if x == 0 { center + horizon } else { start + horizon },
          column-gutter: 1em,
          columns: (0.5em, 100%),
          inset: 0em,
          text(fill: gray, str(line.number)), line.body,
          stroke: 0pt,
        ),
      )
    }

    //
    rect(width: 100%, stroke: gray + 0.5pt, inset: 1em, it)
  }

  content
}
