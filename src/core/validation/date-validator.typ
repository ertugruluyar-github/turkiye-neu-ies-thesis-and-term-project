#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DATETIME-DOCUMENTATION-LINK,
)

#let date-validator(
  date: none,
  parameter-name: none,
  parameter-description: none,
) = {
  assert(
    type(date) == datetime,
    message: STRING-ERROR-INLINE-TITLE
      + parameter-description
      + " alanındaki "
      + "'"
      + parameter-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'datetime' fonksiyonunu kullanarak tarih giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DATETIME-DOCUMENTATION-LINK,
  )
}
