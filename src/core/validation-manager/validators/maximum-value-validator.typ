#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-INT-DOCUMENTATION-LINK,
)

#let maximum-value-validator(
  value: none,
  max-value: none,
  value-name: none,
  value-description: none,
  custom-documantation-link: none,
) = {
  let documantation-link = if custom-documantation-link != none { custom-documantation-link } else {
    STRING-TYPST-INT-DOCUMENTATION-LINK
  }
  let common-message-1 = "'" + value-name + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. "
  let common-message-2 = STRING-RELATED-DOCUMENTATION-INLINE-TITLE + documantation-link
  assert(
    value <= max-value,
    message: STRING-ERROR-INLINE-TITLE
      + common-message-1
      + value-description
      + " en fazla "
      + str(max-value)
      + " olabilir. "
      + common-message-2,
  )
}
