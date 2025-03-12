#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  DEPARTMENTS,
)

#let department-validator(value: none) = {
  assert(
    value in DEPARTMENTS.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'department' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'DEPARTMENTS' sözlüğündeki bir ana bilim dalını seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
