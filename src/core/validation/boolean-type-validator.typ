#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-BOOLEAN-DOCUMENTATION-LINK,
)

#let boolean-type-validator(
  parameter: none,
  parameter-name: none,
  parameter-description: none,
) = {
  assert(
    type(parameter) == bool,
    message: STRING-ERROR-INLINE-TITLE
      + parameter-description
      + " alanındaki "
      + "'"
      + parameter-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen `true` ya da `false` giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-BOOLEAN-DOCUMENTATION-LINK,
  )
}
