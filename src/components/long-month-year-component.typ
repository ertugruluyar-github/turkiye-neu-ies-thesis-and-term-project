#import "/src/constants.typ": TURKISH-MONTH-NAMES, LONG-MONTH-YEAR-DATE-FORMAT
#import "/src/modules/custom-functions.typ": change-long-month-name

#let long-month-year-component(
  date: datetime.today(),
) = {
  show: change-long-month-name(date: date, month-names: TURKISH-MONTH-NAMES, date.display(LONG-MONTH-YEAR-DATE-FORMAT))
}
