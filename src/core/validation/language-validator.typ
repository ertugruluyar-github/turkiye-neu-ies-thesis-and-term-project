#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  LANGUAGES,
)

#let language-validator(language: none) = {
  assert(
    language in LANGUAGES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'language' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'LANGUAGES' sözlüğündeki bir dili seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
