#let curriculum-vitae-page-style(content) = {
  show heading.where(level: 1): set align(center)

  set par(
    first-line-indent: 0cm,
    justify: false,
    leading: 1em,
    spacing: 1.5em,
  )

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
    align: left + horizon,
    stroke: 0.25pt + black,
  )

  show table: set align(center)

  set table.header(repeat: false)

  set table.footer(repeat: false)

  content
}
