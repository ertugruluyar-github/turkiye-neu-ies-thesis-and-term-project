#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

// Tarih Formatı [Date Format]
#let FULL-DATE-FORMAT = "[day]/[month]/[year]"
#let ONLY-YEAR-DATE-FORMAT = "[year]"
#let MONTH-YEAR-DATE-FORMAT = "[month]/[year]"
#let LONG-MONTH-YEAR-DATE-FORMAT = "[month repr:long] [year]"

// Aylar [Months]
#let STRING-MONTH-NAMES = (
  translator(key: language-keys.JANUARY),
  translator(key: language-keys.FEBRUARY),
  translator(key: language-keys.MARCH),
  translator(key: language-keys.APRIL),
  translator(key: language-keys.MAY),
  translator(key: language-keys.JUNE),
  translator(key: language-keys.JULY),
  translator(key: language-keys.AUGUST),
  translator(key: language-keys.SEPTEMBER),
  translator(key: language-keys.OCTOBER),
  translator(key: language-keys.NOVEMBER),
  translator(key: language-keys.DECEMBER),
)
