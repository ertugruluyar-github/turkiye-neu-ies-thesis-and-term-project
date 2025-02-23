#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/date-component.typ": date-component
#import "/src/constants.typ": FULL-DATE-FORMAT

#let full-date-with-author-fullname-component(
  author: none,
  date: none,
) = {
  grid(
    columns: (70%, auto),
    rows: auto,
    row-gutter: 1em,
    align: center,
    [], date-component(date: date, display-format: FULL-DATE-FORMAT),
    [], author-fullname-component(author: author),
  )
}
