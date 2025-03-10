#import "/src/constants.typ": LANGUAGES

#let language-validator(language: none) = {
  assert(
    language in LANGUAGES.values(),
    message: "Desteklenmeyen ya da hatalı dil girişi oldu. Lütfen 'LANGUAGES' sözlüğündeki bir dili seçiniz.",
  )
}
