#import "/src/constants.typ": TURKISH-MONTH-NAMES, FULL-DATE-FORMAT

#let full-date-component(
  date: datetime.today(),
) = {
  date.display(FULL-DATE-FORMAT)
}
