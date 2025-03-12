#import "/src/core/validation/array-type-validator.typ": array-type-validator
#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator
#import "/src/core/validation/maximum-value-validator.typ": maximum-value-validator
#import "/src/constants.typ": (
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  MIN-KEYWORD-COUNT,
  MAX-KEYWORD-COUNT,
)

#let keywords-validator(value: none) = {
  // Dizi parametre türünü doğrula. [Validate array parameter type.]
  array-type-validator(
    value: value.tur,
    value-name: "template-configurations.keywords.tur",
    value-description: "Şablon ayarlarındaki Türkçe anahtar kelimeler",
  )
  array-type-validator(
    value: value.eng,
    value-name: "template-configurations.keywords.eng",
    value-description: "Şablon ayarlarındaki İngilizce anahtar kelimeler",
  )

  // Türkçe anahtar kelime sayısını doğrula. [Validate Turkish keyword count.]
  minimum-value-validator(
    value: value.tur.len(),
    min-value: MIN-KEYWORD-COUNT,
    value-name: "keywords.tur",
    value-description: "Türkçe anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
  maximum-value-validator(
    value: value.tur.len(),
    max-value: MAX-KEYWORD-COUNT,
    value-name: "keywords.tur",
    value-description: "Türkçe anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )

  // İngilizce anahtar kelime sayısını doğrula. [Validate English keyword count.]
  minimum-value-validator(
    value: value.eng.len(),
    min-value: MIN-KEYWORD-COUNT,
    value-name: "keywords.eng",
    value-description: "İngilizce anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
  maximum-value-validator(
    value: value.eng.len(),
    max-value: MAX-KEYWORD-COUNT,
    value-name: "keywords.eng",
    value-description: "İngilizce anahtar kelime sayısı",
    custom-documantation-link: STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
