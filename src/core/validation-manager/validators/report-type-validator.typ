#import "/src/constants/validation-constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
)
#import "/src/constants/drop-down-list-constants.typ": REPORT-TYPES

#let report-type-validator(value: none) = {
  assert(
    value in REPORT-TYPES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'report-type' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'REPORT-TYPES' sözlüğündeki bir rapor türünü seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
