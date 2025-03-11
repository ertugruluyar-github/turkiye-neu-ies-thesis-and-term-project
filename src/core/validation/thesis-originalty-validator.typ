#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator
#import "/src/core/validation/maximum-value-validator.typ": maximum-value-validator

#let thesis-originalty-validator(
  thesis-originalty: (
    included-page-count: none,
    similarity-score: none,
  ),
) = {
  minimum-value-validator(
    number: thesis-originalty.included-page-count,
    min-value: 1,
    parameter-name: "included-page-count",
    parameter-description: "Taranan sayfa sayısı",
  )
  minimum-value-validator(
    number: thesis-originalty.similarity-score,
    min-value: 0,
    parameter-name: "similarity-score",
    parameter-description: "Benzerlik oranı",
  )
  maximum-value-validator(
    number: thesis-originalty.similarity-score,
    max-value: 100,
    parameter-name: "similarity-score",
    parameter-description: "Benzerlik oranı",
  )
}
