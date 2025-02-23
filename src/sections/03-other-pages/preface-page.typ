#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/date-component.typ": date-component
#import "/src/constants.typ": LONG-MONTH-YEAR-DATE-FORMAT

#let preface-page(
  author: none,
  date: none,
) = {
  include "/template/sections/03-other-pages/preface-text.typ"

  v(2em)

  grid(
    columns: (auto, 1fr),
    rows: auto,
    row-gutter: 1em,
    align: right,
    [], author-fullname-component(author: author),
    [], date-component(date: date, display-format: LONG-MONTH-YEAR-DATE-FORMAT),
  )

  pagebreak()
}
