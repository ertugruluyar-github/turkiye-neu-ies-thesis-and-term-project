#import "/src/constants/validation-constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
)
#import "/src/constants/drop-down-list-constants.typ": LANGUAGES
#import "/src/core/validation-manager/validators/dictionary-type-validator.typ": dictionary-type-validator

// Tez başlığını doğrular. [Validates thesis title.]
#let thesis-title-validator(value: none) = {
  // Sözlük parametre türünü doğrula. [Validate dictionary parameter type.]
  dictionary-type-validator(
    value: value,
    value-name: "template-configurations.thesis-title",
    value-description: "Şablon ayarlarındaki tez başlığı",
  )

  // Sözlük parametre türünü doğrula. [Validate dictionary parameter type.]
  dictionary-type-validator(
    value: value.tur,
    value-name: "template-configurations.thesis-title.tur",
    value-description: "Şablon ayarlarındaki Türkçe tez başlığı",
  )

  // Sözlük parametre türünü doğrula. [Validate dictionary parameter type.]
  dictionary-type-validator(
    value: value.eng,
    value-name: "template-configurations.thesis-title.eng",
    value-description: "Şablon ayarlarındaki İngilizce tez başlığı",
  )
}
