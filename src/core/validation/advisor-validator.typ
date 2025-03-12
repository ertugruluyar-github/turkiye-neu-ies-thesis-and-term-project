#import "/src/core/validation/orcid-validator.typ": orcid-validator
#import "/src/core/validation/academic-member-title-validator.typ": academic-member-title-validator

#let advisor-validator(value: none) = {
  // Danışmanın ORCID parametresini doğrula. [Validate the advisor's ORCID parameter.]
  orcid-validator(
    value: value.orcid,
    value-name: "advisor.orcid",
    value-description: "Danışmanın ORCID değeri",
  )

  // Akademik ünvanı doğrula. [Validate the academic title.]
  academic-member-title-validator(value: value.academic-member-title)
}
