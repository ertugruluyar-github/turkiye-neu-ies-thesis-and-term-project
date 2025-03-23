#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/date-component.typ": date-component
#import "/src/constants/date-constants.typ": LONG-MONTH-YEAR-DATE-FORMAT
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let preface-page(
  author: none,
  date: none,
) = {
  heading(level: 1, upper(translator(key: language-keys.PREFACE)))

  include "/template/sections/01-front/preface-text.typ"

  v(2em)

  grid(
    columns: (auto, 1fr),
    rows: auto,
    row-gutter: 1em,
    align: right,
    [], fullname-component(first-name: author.first-name, last-name: author.last-name),
    [], date-component(date: date, display-format: LONG-MONTH-YEAR-DATE-FORMAT),
  )

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
