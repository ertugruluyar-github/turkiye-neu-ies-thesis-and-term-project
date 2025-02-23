#import "/src/constants.typ": TURKISH-MONTH-NAMES, FULL-DATE-FORMAT
#import "/src/modules/custom-functions.typ": change-long-month-name

#let date-component(
  date: datetime.today(),
  display-format: FULL-DATE-FORMAT,
) = {
  show: change-long-month-name(date: date, month-names: TURKISH-MONTH-NAMES, date.display(display-format))
}
