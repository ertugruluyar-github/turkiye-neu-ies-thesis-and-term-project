#import "/src/core/validation/orcid-validator.typ": orcid-validator

#let advisor-validator(value: none) = {
  // Danışmanın ORCID parametresini doğrula. [Validate the advisor's ORCID parameter.]
  orcid-validator(
    value: value.orcid,
    value-name: "advisor.orcid",
    value-description: "Danışmanın ORCID değeri",
  )
}
