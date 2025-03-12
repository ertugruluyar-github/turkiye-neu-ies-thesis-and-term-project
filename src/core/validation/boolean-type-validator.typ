#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-BOOLEAN-DOCUMENTATION-LINK,
)

#let boolean-type-validator(
  value: none,
  value-name: none,
  value-description: none,
) = {
  assert(
    type(value) == bool,
    message: STRING-ERROR-INLINE-TITLE
      + value-description
      + " alanındaki "
      + "'"
      + value-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen `true` ya da `false` giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-BOOLEAN-DOCUMENTATION-LINK,
  )
}
