#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/date-component.typ": date-component
#import "/src/constants.typ": LONG-MONTH-YEAR-DATE-FORMAT

#let preface-page(
  author: none,
  date: none,
) = {
  include "/template/sections/00-other-pages/preface-text.typ"

  v(2em)

  grid(
    columns: (auto, 1fr),
    rows: auto,
    row-gutter: 1em,
    align: right,
    [], fullname-component(first-name: author.first-name, last-name: author.last-name),
    [], date-component(date: date, display-format: LONG-MONTH-YEAR-DATE-FORMAT),
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
