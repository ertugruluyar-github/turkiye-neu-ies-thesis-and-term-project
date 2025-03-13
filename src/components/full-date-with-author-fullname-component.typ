#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/date-component.typ": date-component
#import "/src/constants/date-constants.typ": FULL-DATE-FORMAT

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
    [], fullname-component(first-name: author.first-name, last-name: author.last-name),
  )
}
