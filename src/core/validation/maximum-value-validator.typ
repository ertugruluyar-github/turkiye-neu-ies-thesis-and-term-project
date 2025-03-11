#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-INT-DOCUMENTATION-LINK,
)

#let maximum-value-validator(
  number: none,
  max-value: none,
  parameter-name: none,
  parameter-description: none,
) = {
  let common-message-1 = "'" + parameter-name + "' parametresine desteklenmeyen ya da hatalı bir giriş oldu. "
  let common-message-2 = STRING-RELATED-DOCUMENTATION-INLINE-TITLE + STRING-TYPST-INT-DOCUMENTATION-LINK
  assert(
    number <= max-value,
    message: STRING-ERROR-INLINE-TITLE
      + common-message-1
      + parameter-description
      + " en fazla "
      + str(max-value)
      + " olabilir. "
      + common-message-2,
  )
}
