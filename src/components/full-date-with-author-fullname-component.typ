#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/full-date-component.typ": full-date-component

#let full-date-with-author-fullname-component(
  author: none,
  date: none,
) = {
  grid(
    columns: (70%, auto),
    rows: auto,
    row-gutter: 1em,
    align: center,
    [], full-date-component(date: date),
    [], author-fullname-component(author: author),
  )
}
