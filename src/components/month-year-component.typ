#import "/src/constants.typ": TURKISH-MONTH-NAMES, MONTH-YEAR-DATE-FORMAT
#import "/src/modules/custom-functions.typ": change-long-month-name

#let month-year-component(
  date: datetime.today(),
) = {
  show: change-long-month-name(date: date, month-names: TURKISH-MONTH-NAMES, date.display(MONTH-YEAR-DATE-FORMAT))
}
