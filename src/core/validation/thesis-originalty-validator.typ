#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator
#import "/src/core/validation/maximum-value-validator.typ": maximum-value-validator

#let thesis-originalty-validator(
  value: (
    included-page-count: none,
    similarity-score: none,
  ),
) = {
  minimum-value-validator(
    number: value.included-page-count,
    min-value: 1,
    value-name: "included-page-count",
    value-description: "Taranan sayfa sayısı",
  )
  minimum-value-validator(
    number: value.similarity-score,
    min-value: 0,
    value-name: "similarity-score",
    value-description: "Benzerlik oranı",
  )
  maximum-value-validator(
    number: value.similarity-score,
    max-value: 100,
    value-name: "similarity-score",
    value-description: "Benzerlik oranı",
  )
}
