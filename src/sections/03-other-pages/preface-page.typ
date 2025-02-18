#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/month-year-component.typ": month-year-component

#let preface-page(
  author: none,
  date: none,
) = {
  include "/template/sections/03-other-pages/preface-text.typ"

  grid(
    columns: (auto, 1fr),
    rows: auto,
    row-gutter: 1em,
    align: right,
    [],
    author-fullname-component(
      first-name: author.first-name,
      last-name: author.last-name,
    ),

    [], month-year-component(date: date),
  )

  pagebreak()
}
