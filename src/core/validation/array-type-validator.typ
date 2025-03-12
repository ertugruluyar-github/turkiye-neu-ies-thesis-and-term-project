#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-ARRAY-DOCUMENTATION-LINK,
)

#let array-type-validator(
  parameter: none,
  parameter-name: none,
  parameter-description: none,
) = {
  assert(
    type(parameter) == array,
    message: STRING-ERROR-INLINE-TITLE
      + parameter-description
      + " alanındaki "
      + "'"
      + parameter-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen `array(1, ...)` ya da `(1, ...)` şeklinde bir dizi giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-ARRAY-DOCUMENTATION-LINK,
  )
}
