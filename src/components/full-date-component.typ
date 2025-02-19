#import "/src/constants.typ": FULL-DATE-FORMAT

#let full-date-component(
  date: datetime.today(),
) = {
  date.display(FULL-DATE-FORMAT)
}
