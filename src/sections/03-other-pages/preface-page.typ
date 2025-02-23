#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/long-month-year-component.typ": long-month-year-component

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
    [], long-month-year-component(date: date),
  )

  pagebreak()
}
