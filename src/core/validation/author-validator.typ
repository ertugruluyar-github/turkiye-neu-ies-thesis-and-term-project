#import "/src/core/validation/orcid-validator.typ": orcid-validator

#let author-validator(value: none) = {
  // Yazarın ORCID parametresini doğrula. [Validate the author's ORCID parameter.]
  orcid-validator(
    value: value.orcid,
    value-name: "author.orcid",
    value-description: "Yazarın ORCID değeri",
  )
}
