#import "/src/constants/document-settings-constants.typ": ALTERNATE-FONT-SIZE

// TODO: Tablo stillerini yap.
#let table-style(content) = {
  show table.cell.where(y: 0): set text(weight: "bold")
  let normal-stroke-size = 1pt
  let bold-stroke-size = 1.5pt

  set table(
    align: center + horizon,
    gutter: 0pt,
    inset: (x: 0.15cm, y: 0.25cm),
    stroke: (x, y) => (
      left: none,
      top: if y == 0 { bold-stroke-size } else { 0pt },
      right: none,
      bottom: if y > 1 { normal-stroke-size } else if y == 1 or (x == 0 and y == 0) { bold-stroke-size } else { 0pt },
    ),
    fill: none,
  )

  show table: set par(
    first-line-indent: 0cm,
    hanging-indent: 0cm,
    justify: false,
    leading: 0.5em,
  )

  show table: set text(size: ALTERNATE-FONT-SIZE)

  show table.footer: set table.cell(align: left + horizon)

  show table.footer: set par(justify: true)

  set table.cell(breakable: true)

  set table.header(repeat: true)

  set table.footer(repeat: true)
  /*
    show table.footer: it => {
      set par(first-line-indent: 0cm, leading: 1em)
      set text(size: ALTERNATE-FONT-SIZE)
      set table.cell(align: right)
      it
    }
  */

  content
}
