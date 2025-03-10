#import "/src/constants.typ": STRING-ERROR-INLINE-TITLE, REPORT-TYPES

#let report-type-validator(report-type: none) = {
  assert(
    report-type in REPORT-TYPES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'report-type' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'REPORT-TYPES' sözlüğündeki bir rapor türünü seçiniz.",
  )
}
