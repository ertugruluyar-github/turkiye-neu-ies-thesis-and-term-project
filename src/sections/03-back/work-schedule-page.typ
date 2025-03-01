#import "/src/styles/work-schedule-page-style.typ": work-schedule-page-style
#import "/src/constants.typ": (
  REPORT-TYPES,
  STRING-WORK-SCHEDULE,
  STRING-WORK-PACKAGE,
  STRING-SHORT-WORK-PACKAGE,
  STRING-MONTHS,
  MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT,
  DOCTORAL-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT,
)

#let work-schedule-page(
  report-type: none,
  work-packages: none,
) = {
  // Sayfa stilini uygula [Apply page style]
  show: work-schedule-page-style

  // Rapor türüne göre çalışma takvimi aylarını belirle [Determine the months of the work schedule according to the type of report]
  let month-numbers = if report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL {
    array.range(1, MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT + 1, step: 1)
  } else if report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL {
    array.range(1, DOCTORAL-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT + 1, step: 1)
  }

  // Sütun sayısını belirle [Determine the number of columns]
  let column-count = month-numbers.len()

  // Sayfa başlığı [Page title]
  heading(level: 1, STRING-WORK-SCHEDULE)

  // İş paketleri listesi [Work packages list]
  for (index, work-package) in work-packages.enumerate(start: 1) {
    [*İP #index:* #work-package.description\ ]
  }

  // Tablo başlığındaki aylar [Months in the table header]
  let table-header-months = month-numbers.map(index => {
    [*#index*]
  })

  // Tablo hücreleri [Table cells]
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

  // Çalışma takvimi tablosu [Work schedule table]
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

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true) [If the page at the end of the page is empty, the end of the page should be passive]
  pagebreak(weak: true)
}
