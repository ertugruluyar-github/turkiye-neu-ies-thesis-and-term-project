#import "/src/core/validation/orcid-validator.typ": orcid-validator
#import "/src/core/validation/academic-member-title-validator.typ": academic-member-title-validator

#let second-advisor-validator(value: none) = {
  // İkinci Danışmanın ORCID parametresini doğrula. [Validate the second advisor's ORCID parameter.]
  orcid-validator(
    value: value.orcid,
    value-name: "second-advisor.orcid",
    value-description: "İkinci Danışmanın ORCID değeri",
  )

  // Akademik ünvanı doğrula. [Validate the academic title.]
  academic-member-title-validator(value: value.academic-member-title)
}
