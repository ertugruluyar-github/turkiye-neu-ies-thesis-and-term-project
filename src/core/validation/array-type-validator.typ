#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-ARRAY-DOCUMENTATION-LINK,
)

#let array-type-validator(
  value: none,
  value-name: none,
  value-description: none,
) = {
  assert(
    type(value) == array,
    message: STRING-ERROR-INLINE-TITLE
      + value-description
      + " alanındaki "
      + "'"
      + value-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'array(1, ...)' ya da '(1, ...)' şeklinde bir dizi giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-ARRAY-DOCUMENTATION-LINK,
  )
}
