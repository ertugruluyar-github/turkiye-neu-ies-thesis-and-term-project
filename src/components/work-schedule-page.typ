#import "/src/constants.typ": (
  ALTERNATE-FONT-SIZE,
  REPORT-TYPES,
  STRING-WORK-SCHEDULE,
  STRING-WORK-PACKAGE,
  STRING-SHORT-WORK-PACKAGE,
  STRING-MONTHS,
  MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT,
  PHD-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT,
)

#let work-schedule-page(
  report-type: none,
  work-packages: none,
) = {
  //
  let month-numbers = if report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL {
    array.range(1, MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT + 1, step: 1)
  } else if report-type == REPORT-TYPES.PHD-THESIS-PROPOSAL {
    array.range(1, PHD-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT + 1, step: 1)
  }

  //
  let column-count = month-numbers.len()

  // Sayfa başlığını ortala
  show heading.where(level: 1): set align(center)

  set par(
    justify: false,
    leading: 1em,
    spacing: 1.5em,
    first-line-indent: (amount: 0cm, all: true),
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
    align: left,
    stroke: 0.25pt + black,
  )

  show table: set text(size: ALTERNATE-FONT-SIZE)

  set table.header(repeat: false)

  set table.footer(repeat: false)

  heading(level: 1, STRING-WORK-SCHEDULE)

  //
  for (index, work-package) in work-packages.enumerate(start: 1) {
    [*İP #index:* #work-package.description\ ]
  }

  //
  let table-header-months = month-numbers.map(index => {
    [*#index*]
  })

  //
  let table-cells = for (index, work-package) in work-packages.enumerate(start: 1) {
    (
      [*#STRING-SHORT-WORK-PACKAGE #index*],
      ..month-numbers.map(month => {
        if work-package.months.contains(month) {
          table.cell(fill: rgb(166, 166, 166))[]
        } else {
          []
        }
      }),
    )
  }

  //
  align(
    center,
    table(
      columns: (auto,) + ((1fr,) * column-count),
      align: center + horizon,
      table.header(
        table.cell(rowspan: 2)[*İP\**],
        table.cell(colspan: column-count)[*#STRING-MONTHS*],
        ..table-header-months,
      ), ..table-cells,
      table.footer(
        table.cell(
          colspan: column-count + 1,
          align: left,
          stroke: (
            left: 0pt,
            right: 0pt,
            bottom: 0pt,
          ),
        )[\*#STRING-SHORT-WORK-PACKAGE: #STRING-WORK-PACKAGE],
      ),
    ),
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
