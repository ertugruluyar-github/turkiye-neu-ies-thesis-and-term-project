#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator

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
}
