#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-INT-DOCUMENTATION-LINK,
)

#let minimum-value-validator(
  number: none,
  min-value: none,
  parameter-name: none,
  parameter-description: none,
  custom-documantation-link: none,
) = {
  let documantation-link = if custom-documantation-link != none { custom-documantation-link } else {
    STRING-TYPST-INT-DOCUMENTATION-LINK
  }
  let common-message-1 = "'" + parameter-name + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. "
  let common-message-2 = (
    STRING-RELATED-DOCUMENTATION-INLINE-TITLE + documantation-link
  )
  assert(
    number >= min-value,
    message: STRING-ERROR-INLINE-TITLE
      + common-message-1
      + parameter-description
      + " en az "
      + str(min-value)
      + " olabilir. "
      + common-message-2,
  )
}
