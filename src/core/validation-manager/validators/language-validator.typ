#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  LANGUAGES,
)
#import "/src/core/validation/dictionary-type-validator.typ": dictionary-type-validator

#let language-validator(value: none) = {
  // Sözlük parametre türünü doğrula. [Validate dictionary parameter type.]
  dictionary-type-validator(
    value: value,
    value-name: "template-configurations.language",
    value-description: "Şablon ayarlarındaki dil",
  )

  // Dil değerini doğrula. [Validate the language value.]
  assert(
    value in LANGUAGES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'language' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'LANGUAGES' sözlüğündeki bir dili seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
