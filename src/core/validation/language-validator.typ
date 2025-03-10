#import "/src/constants.typ": STRING-ERROR-INLINE-TITLE, LANGUAGES

#let language-validator(language: none) = {
  assert(
    language in LANGUAGES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'language' parametresine desteklenmeyen ya da hatalı dil girişi oldu. Lütfen 'LANGUAGES' sözlüğündeki bir dili seçiniz.",
  )
}
