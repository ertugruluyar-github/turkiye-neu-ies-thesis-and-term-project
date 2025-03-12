#import "/src/core/validation/orcid-validator.typ": orcid-validator

#let second-advisor-validator(value: none) = {
  // İkinci Danışmanın ORCID parametresini doğrula. [Validate the second advisor's ORCID parameter.]
  orcid-validator(
    value: value.orcid,
    value-name: "second-advisor.orcid",
    value-description: "İkinci Danışmanın ORCID değeri",
  )
}
