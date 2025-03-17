#import "/src/constants/date-constants.typ": FULL-DATE-FORMAT, STRING-MONTH-NAMES
#import "/src/core/custom-functions/long-month-name-by-language.typ": long-month-name-by-language

#let date-component(
  date: datetime.today(),
  display-format: FULL-DATE-FORMAT,
) = {
  show: long-month-name-by-language(
    date: date,
    month-names: STRING-MONTH-NAMES,
    date.display(display-format),
  )
}
