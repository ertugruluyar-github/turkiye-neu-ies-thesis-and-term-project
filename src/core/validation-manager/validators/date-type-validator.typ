#import "/src/constants/validation-constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DATETIME-DOCUMENTATION-LINK,
)

#let date-type-validator(
  value: none,
  value-name: none,
  value-description: none,
) = {
  assert(
    type(value) == datetime,
    message: STRING-ERROR-INLINE-TITLE
      + value-description
      + " alanındaki "
      + "'"
      + value-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'datetime' fonksiyonunu kullanarak tarih giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DATETIME-DOCUMENTATION-LINK,
  )
}
