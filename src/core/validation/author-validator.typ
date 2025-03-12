#import "/src/core/validation/dictionary-type-validator.typ": dictionary-type-validator
#import "/src/core/validation/orcid-validator.typ": orcid-validator

#let author-validator(value: none) = {
  // Sözlük parametre türünü doğrula. [Validate dictionary parameter type.]
  dictionary-type-validator(
    value: value,
    value-name: "template-configurations.author",
    value-description: "Şablon ayarlarındaki yazar",
  )

  // Yazarın ORCID parametresini doğrula. [Validate the author's ORCID parameter.]
  orcid-validator(
    value: value.orcid,
    value-name: "author.orcid",
    value-description: "Yazarın ORCID değeri",
  )
}
