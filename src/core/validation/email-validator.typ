#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-STR-DOCUMENTATION-LINK,
)

#let email-validator(
  email: none,
  parameter-name: none,
  parameter-description: none,
) = {
  assert(
    type(email.find(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"))) == str,
    message: STRING-ERROR-INLINE-TITLE
      + parameter-description
      + " alanındaki "
      + "'"
      + parameter-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen geçerli bir email giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-STR-DOCUMENTATION-LINK,
  )
}
