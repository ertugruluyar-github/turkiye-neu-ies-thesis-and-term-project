#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  WHAT-IS-MY-ORCID-ID-LINK,
)

#let orcid-validator(
  parameter: none,
  parameter-name: none,
  parameter-description: none,
) = {
  assert(
    type(parameter.find(regex("\d{4}-\d{4}-\d{4}-\d{4}"))) == str,
    message: STRING-ERROR-INLINE-TITLE
      + parameter-description
      + " alanındaki "
      + "'"
      + parameter-name
      + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'XXXX-XXXX-XXXX-XXXX' (X: rakam) şeklinde giriniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + WHAT-IS-MY-ORCID-ID-LINK,
  )
}
