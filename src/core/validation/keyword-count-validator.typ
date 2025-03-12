#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator
#import "/src/core/validation/maximum-value-validator.typ": maximum-value-validator
#import "/src/constants.typ": (
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  MIN-KEYWORD-COUNT,
  MAX-KEYWORD-COUNT,
)

#let keyword-count-validator(value: none) = {
  minimum-value-validator(
    number: value,
    min-value: MIN-KEYWORD-COUNT,
    value-name: "keywords",
    value-description: "Anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
  maximum-value-validator(
    number: value,
    max-value: MAX-KEYWORD-COUNT,
    value-name: "keywords",
    value-description: "Anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
