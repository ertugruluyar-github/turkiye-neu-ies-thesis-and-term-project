#import "/src/constants.typ": FULL-DATE-FORMAT, STRING-MONTH-NAMES
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/modules/custom-functions.typ": change-long-month-name

#let date-component(
  date: datetime.today(),
  display-format: FULL-DATE-FORMAT,
) = {
  show: change-long-month-name(
    date: date,
    month-names: STRING-MONTH-NAMES,
    date.display(display-format),
  )
}
