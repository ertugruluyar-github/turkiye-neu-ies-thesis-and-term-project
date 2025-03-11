#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator
#import "/src/core/validation/maximum-value-validator.typ": maximum-value-validator
#import "/src/constants.typ": (
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  MIN-KEYWORD-COUNT,
  MAX-KEYWORD-COUNT,
)

#let keyword-count-validator(keyword-count: none) = {
  minimum-value-validator(
    number: keyword-count,
    min-value: MIN-KEYWORD-COUNT,
    parameter-name: "keywords",
    parameter-description: "Anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
  maximum-value-validator(
    number: keyword-count,
    max-value: MAX-KEYWORD-COUNT,
    parameter-name: "keywords",
    parameter-description: "Anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
