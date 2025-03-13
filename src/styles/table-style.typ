#import "/src/constants/document-settings-constants.typ": ALTERNATE-FONT-SIZE

// TODO: Tablo stillerini yap.
#let table-style(content) = {
  show table.cell.where(y: 0): set text(weight: "bold")
  let normal-stroke-size = 1pt
  let bold-stroke-size = 1.5pt

  set table(
    align: center + horizon,
    gutter: 0pt,
    inset: (x: 0.3cm, y: 0.25cm),
    stroke: (x, y) => (
      left: none,
      top: if y == 0 { bold-stroke-size } else { 0pt },
      right: none,
      bottom: if y > 1 { normal-stroke-size } else if y == 1 or (x == 0 and y == 0) { bold-stroke-size } else { 0pt },
    ),
    fill: none,
  )

  show table: it => {
    set text(size: ALTERNATE-FONT-SIZE)
    set table.footer(repeat: true)
    show table.footer: set table.cell(align: left)
    it
  }
  /*
    show table.footer: it => {
      set table.footer(repeat: true)
      set table.cell(align: right)
      set text(size: ALTERNATE-FONT-SIZE)
      it
    }
  */

  content
}
